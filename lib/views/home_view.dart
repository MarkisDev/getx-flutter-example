import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_authentication_google/controller/authentication_controller.dart';
import 'package:getx_authentication_google/models/user_model.dart';

class HomeView extends GetView<AuthenticationController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserModel userModel = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(userModel.photoUrl),
          Text(
            'Name: ${userModel.name}',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Email: ${userModel.email}',
            style: TextStyle(fontSize: 18),
          ),
          ElevatedButton(
              onPressed: () async {
                await controller.logoutGoogle();
              },
              child: Text('Logout'))
        ],
      )),
    );
  }
}
