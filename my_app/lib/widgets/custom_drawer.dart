import 'package:flutter/material.dart';
import 'package:my_app/controllers/user_controller.dart';
import 'package:my_app/models/user.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox();
    /* return Drawer(
    child: ListView(
      children: [
        Selector<UserController , User>(
          selector: (context , userController) => userController.userInfo!,
          builder: (context, userController, child) {
            return UserAccountsDrawerHeader(accountName: Text(userController.name), accountEmail: Text(userController.email));
          },
        ),
        ListTile(
          leading: Icon(Icons.edit),
          title: Text('Edit Profile'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder :(context) => Registiration(),));
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
          onTap: () {
            Provider.of<UserController>(context , listen: false).logout();
            Navigator.push(context, MaterialPageRoute(builder: (context) => Registiration(),));
          },
        )
      ],
    ),
          );
          */
  }
}
