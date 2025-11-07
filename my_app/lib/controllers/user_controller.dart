import 'package:flutter/material.dart';
import 'package:my_app/models/response/login_response.dart';
import 'package:my_app/models/user.dart';
import 'package:my_app/services/user_servicers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserController extends ChangeNotifier{
  UserInfo? userInfo;
  UserServicers? userServicers;

  Future<LoginResponse> login({required String username , required String password}) async{
    LoginResponse response = await userServicers!.login(username: username, password: password);
    if(response.statusCode == 200){
      setUserInfo(userInfo: response.data);
    }
    return response;
  }

  void setUserInfo({required UserInfo userInfo}){
    this.userInfo;
  }
}


