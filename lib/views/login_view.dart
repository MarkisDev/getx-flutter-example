import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_authentication_google/controller/authentication_controller.dart';

class LoginView extends GetView<AuthenticationController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Google Signin'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
              child: ElevatedButton(
            onPressed: () async {
              await controller.loginWithGoogle();
            },
            child: Text('Login with Google'),
          )),
        ));
  }
}
