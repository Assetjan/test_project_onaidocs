import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'storage_service.dart';

class StorageServiceImpl implements StorageService {
  static final StorageServiceImpl _instance = StorageServiceImpl._internal();
  factory StorageServiceImpl() => _instance;
  StorageServiceImpl._internal();

  static const String _boxName = 'app_storage_box';
  static const String _accessTokenKey = 'access_token';
  static const String _languageCodeKey = 'language_code';

  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Box<dynamic>? _box;

  Future<Box<dynamic>> _openBox() async {
    if (_box != null && _box!.isOpen) {
      return _box!;
    }
    _box = await Hive.openBox<dynamic>(_boxName);
    return _box!;
  }

  @override
  Future<String?> getAccessToken() {
    return _secureStorage.read(key: _accessTokenKey);
  }

  @override
  Future<void> setAccessToken(String? token) {
    if (token == null) {
      return _secureStorage.delete(key: _accessTokenKey);
    }
    return _secureStorage.write(key: _accessTokenKey, value: token);
  }

  @override
  String? getLanguageCode() {
    if (_box == null || !_box!.isOpen) {
      return null;
    }
    return _box!.get(_languageCodeKey) as String?;
  }

  @override
  Future<void> setLanguageCode(String code) async {
    final box = await _openBox();
    await box.put(_languageCodeKey, code);
  }
}
