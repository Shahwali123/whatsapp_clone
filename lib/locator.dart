import 'package:get_it/get_it.dart';
import 'package:whatsapp_clone/core/services/api_service.dart';
import 'package:whatsapp_clone/core/services/image_service.dart';
import 'package:whatsapp_clone/core/services/notification_service.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  // locator.registerLazySingleton<AuthService>(() => AuthService());
  // locator.registerLazySingleton<DatabaseService>(() => DatabaseService());
  // locator.registerLazySingleton<StorageService>(() => StorageService());
  locator.registerLazySingleton<ImageService>(() => ImageService());
  locator.registerLazySingleton<NotificationsService>(
      () => NotificationsService());
  locator.registerLazySingleton<ApiService>(() => ApiService());
}
