import 'package:dio/dio.dart';
import 'package:shoes/core/api/apiInterSaptors.dart';
import 'package:shoes/core/api/api_consumer.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = 'https://shoes-collections.p.rapidapi.com/';
    dio.interceptors.add(Apiintersaptors());
    dio.options.headers = {
      "x-rapidapi-host": "shoes-collections.p.rapidapi.com ",
      "x-rapidapi-key": "01ade6c6a7msh53a22f4510a56eap1647f2jsnba32284e02ff"
    };
    dio.interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true));
  }
  @override
  Future delete(String path,
      {Object? data, Map<String, dynamic>? queryParams}) async {
    try {
      final response =
          await dio.delete(path, data: data, queryParameters: queryParams);
      return response.data;
    } on Exception catch (e) {
      // TODO
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryParams}) async {
    try {
      final response =
          await dio.get(path, data: data, queryParameters: queryParams);
      return response.data['meals'];
    } on Exception catch (e) {
      // TODO
    }
  }

  @override
  Future patch(String path,
      {Object? data, Map<String, dynamic>? queryParams}) async {
    try {
      final response =
          await dio.patch(path, data: data, queryParameters: queryParams);
      return response.data;
    } on Exception catch (e) {
      // TODO
    }
  }

  @override
  Future post(String path,
      {Object? data, Map<String, dynamic>? queryParams}) async {
    try {
      final response =
          await dio.post(path, data: data, queryParameters: queryParams);
      return response.data;
    } on Exception catch (e) {
      // TODO
    }
  }
}
