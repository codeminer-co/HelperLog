import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:helperlog/models/user_model.dart';
import 'package:helperlog/services/api_constants.dart';

class AuthRepository {
  Dio dio = Dio();

  Future<UserModel?> login(dynamic data) async {
    try {
      var response = await dio.post(loginUrl!, data: data);

      var responseData = response.data;

      final password = responseData['password'];
      final email = responseData['email'];
      if (kDebugMode) {
        print(responseData);
      }
      if (responseData['success'] == true) {
        UserModel user = UserModel(email: email, password: password);

        return user;
      } else {
        if (kDebugMode) {
          print("Invalid request");
        }
      }
    } on DioException catch (e) {
      exceptionHelper(e);
    } catch (e) {
      rethrow;
    }
    return null;
  }

  Future<UserModel?> register(dynamic data) async {
    try {
      var response = await dio.post(registerUrl!, data: data);

      var responseData = response.data;

      if (kDebugMode) {
        print(responseData);
      }
      if (responseData['success'] == true) {
        UserModel user = UserModel(
          username: responseData['username'],
          password: responseData['password'],
          email: responseData['email'],
          gender: responseData['gender'],
        );

        return user;
      } else {
        if (kDebugMode) {
          print("Invalid request");
        }
      }
    } on DioException catch (e) {
      exceptionHelper(e);
    } catch (e) {
      throw Exception(e.toString());
    }
    return null;
  }

  void exceptionHelper(DioException e) {
    if (e.error is SocketException) {
      if (kDebugMode) {
        print('Network error: ${e.error}');
      }
    } else {
      if (kDebugMode) {
        print('Dio error: ${e.message}');
      }
    }
  }
}
