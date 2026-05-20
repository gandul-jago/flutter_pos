import 'package:dio/dio.dart';
// ini namnya koneksi ke server

abstract class ApiClient {
  final Dio _dio = Dio();

  ApiClient (){
    _dio.options.headers['content-type'] = 'application/json';
    _dio.options.baseUrl = 'http://127.0.0.1:8000/api';
  }

  Dio get dio => _dio;

}