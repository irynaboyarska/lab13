import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://lab13.requestcatcher.com',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  Future<Response> login(String email, String password) =>
      _dio.post('/login', data: {'email': email, 'password': password});

  Future<Response> signUp(String name, String email, String password) =>
      _dio.post('/signup', data: {
        'name': name,
        'email': email,
        'password': password,
      });

  Future<Response> resetPassword(String email) =>
      _dio.post('/reset', data: {'email': email});
}