import 'package:flutter/material.dart';
import 'package:my_app/controllers/user_controller.dart';
import 'package:my_app/screens/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider<UserController>(create:(context) => UserController(), )],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login()
      ),
    );
  }
}
