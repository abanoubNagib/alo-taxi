import 'package:alo_taxi/core/network/api_service.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // web services
  getIt.registerLazySingleton<ApiService>(() => ApiService(createAndSetUpDio()));

  // firebase
  // getIt.registerLazySingleton<FirebaseAuth>(
  //   () => FirebaseAuth.instance,
  // );
  // getIt.registerLazySingleton<FirebaseStorage>(
  //   () => FirebaseStorage.instance,
  // );
  // getIt.registerLazySingleton<FirebaseFirestore>(
  //   () => FirebaseFirestore.instance,
  // );

  // home
  // getIt.registerLazySingleton<HomeRepo>(
  //   () => HomeRepo(
  //     getIt(),
  //   ),
  // );
  //
  // getIt.registerFactory<EditProfileDataCubit>(
  //   () => EditProfileDataCubit(
  //     getIt(),
  //   ),
  // );
  //
  // // login
  // getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //saved items
  // getIt.registerLazySingleton<DataBaseHelper>(() => DataBaseHelper());
  // getIt.registerFactory<SavedItemsCubit>(() => SavedItemsCubit(getIt()));
  // getIt.registerLazySingleton<SavedItemsRepo>(() => SavedItemsRepo(getIt()));
}

Dio createAndSetUpDio() {
  Dio dio = Dio();
  dio
    ..options.connectTimeout = const Duration(seconds: 10)
    ..options.receiveTimeout = const Duration(seconds: 10);

  dio.interceptors.add(LogInterceptor(
    error: true,
    requestBody: true,
    request: true,
    responseBody: true,
    requestHeader: false,
    responseHeader: false,
  ));
  return dio;
}
