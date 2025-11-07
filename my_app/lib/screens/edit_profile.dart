/*
import 'package:flutter/material.dart';
import 'package:my_app/controllers/user_controller.dart';
import 'package:my_app/core/constant/app_color.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController locationController = TextEditingController();
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
                  controller: emailController, 
                  text: 'email',
                  prefixIcon: Icon(Icons.email , color: AppColor.primaryColor,),
                  ),
                CustomTextField(
                  controller: passwordController, 
                  text: 'password',
                  prefixIcon: Icon(Icons.password),
                  ),
                CustomTextField(
                  controller: locationController, 
                  text: 'location',
                  prefixIcon: Icon(Icons.location_city , color: AppColor.primaryColor,),
                  ),
                  SizedBox(height: h *0.03,),
                  ElevatedButton(
                  onPressed: (){
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    minimumSize: Size(350, 60)
                  ),
                  child: Text('Save' , style: TextStyle(color: Colors.white , fontSize: 20),),
                  )
              ],
            ),
          ),
        ),
    );
  }
}
  
*/