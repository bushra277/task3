import 'package:flutter/material.dart';
import 'package:my_app/controllers/user_controller.dart';
import 'package:my_app/core/constant/app_color.dart';
import 'package:my_app/models/response/login_response.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login' , style: TextStyle(color: Colors.white),), centerTitle: true,
        backgroundColor: AppColor.primaryColor,),
        body: Padding(
          padding:EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              children: [
                CustomTextField(
                  controller: nameController, 
                  text: 'name',
                  prefixIcon: Icon(Icons.person , color: AppColor.primaryColor,),
                  ),
                CustomTextField(
                  controller: passwordController, 
                  text: 'email',
                  prefixIcon: Icon(Icons.email , color: AppColor.primaryColor,),
                  ),
                  SizedBox(height: h *0.03,),
                  ElevatedButton(
                  onPressed: (){
                    login();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    minimumSize: Size(350, 60)
                  ),
                  child: Text('Login' , style: TextStyle(color: Colors.white , fontSize: 20),),
                  )
              ],
            ),
          ),
        ),
    );
  }
  void login()async{
    UserController userController = Provider.of<UserController>(context , listen: false);
    LoginResponse loginResponse = await userController.login(username: nameController.text.trim(), password: passwordController.text.trim());
    if(loginResponse.statusCode == 200){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
    }
    else{
      print('bushra');
    }
  }
}
