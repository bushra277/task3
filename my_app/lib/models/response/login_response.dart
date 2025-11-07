class LoginResponse <T>{
  T? data;
  int? statusCode;
  String? message;

  LoginResponse({this.data , this.statusCode , this.message});
}