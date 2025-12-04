abstract class StorageService {
  Future<String?> getAccessToken();
  Future<void> setAccessToken(String? token);
  String? getLanguageCode();
  Future<void> setLanguageCode(String code);
}
