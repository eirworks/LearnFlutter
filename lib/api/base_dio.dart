import 'package:dio/dio.dart';

class BaseDio {

  final _dio = Dio(
    BaseOptions(
      baseUrl: "https://jsonplaceholder.typicode.com",
    )
  ).interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      print("DIO Request (${options.method.toUpperCase()}) --> "+options.uri.toString());
      return handler.next(options);
    },
    onResponse: (response, handler) {
      print("DIO Response (Code:${response.statusMessage}) <-- "+response.requestOptions.uri.toString());
      return handler.next(response);
    },
  ));
}