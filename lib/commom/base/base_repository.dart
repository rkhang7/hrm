import 'package:hrm/services/local_storage_service.dart';

abstract class BaseRepository {
  String getToken() {
    return "Bearer ${LocalStorageService.getAccessToken()}";
  }
}
