import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:my_app/api/api_client.dart';
import 'package:my_app/models/request/login_request.dart';
import 'package:my_app/models/response/login_response.dart';
import 'package:my_app/models/user.dart';

class UserServicers {
  Dio? dio;

  Future <LoginResponse<UserInfo>> login({required String? username ,required String? password}) async{
    dio = await ApiClient.getDio();
    try {
      LoginRequest loginRequest = LoginRequest(username: username , password: password);
      final loginRequestJson = jsonEncode(loginRequest.toJson());
      final response = await dio!.post('/auth/login' , data: loginRequestJson);
      
      if (response == 200){
        UserInfo userInfo = UserInfo.fromJson(response.data);

        return LoginResponse(
          data: userInfo,
          statusCode: response.statusCode,
          message: response.statusMessage
        );
      }
      return LoginResponse(
        statusCode: response.statusCode,
        message: response.statusMessage
      );

    } catch (e) {
      if (e is DioException){
        return LoginResponse(
          statusCode: e.response!.statusCode,
          message: e.response!.data['message']
        );
      }
      return LoginResponse(statusCode: 0 , message: 'Something went wrong');
      
    }
  }
}