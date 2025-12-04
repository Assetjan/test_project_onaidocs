import 'dart:io';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_onaidocs/src/core/service/storage/storage_service.dart';
import '../../../router/router.dart';
import '../../../router/router_paths.dart';
import '../../../widgets/app_scaffold.dart';

class DioInterceptor {
  final Dio api;
  final StorageService _storageService = GetIt.instance<StorageService>();

  DioInterceptor(this.api) {
    api.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.connectTimeout = const Duration(seconds: 30);
          options.receiveTimeout = const Duration(seconds: 30);
          final userAgent = Platform.isAndroid ? 'Android' : 'iOS';
          options.headers['Accept'] = 'application/json';
          options.headers['User-Agent'] = userAgent;
          final languageCode = _storageService.getLanguageCode() ?? 'ru';
          options.headers['Accept-Language'] = languageCode;
          final accessToken = await _storageService.getAccessToken();
          if (accessToken != null && accessToken.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
          return handler.next(options);
        },
        onError: (error, handler) async {
          final statusCode = error.response?.statusCode;
          if (statusCode == 401 || statusCode == 403) {
            await _handleAuthError(error, handler);
            return;
          }
          return handler.next(error);
        },
      ),
    );
  }

  Future<void> _handleAuthError(
    DioException error,
    ErrorInterceptorHandler handler,
  ) async {
    final context = rootNavigatorKey.currentContext;
    if (context != null) {
      while (context.canPop()) {
        context.pop();
      }
      context.pushReplacementNamed(RoutePaths.auth);
    }
    handler.next(error);
  }
}
