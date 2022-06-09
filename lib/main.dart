import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_authentication_google/bindings/authentication_binding.dart';
import 'package:getx_authentication_google/bindings/home_binding.dart';
import 'package:getx_authentication_google/views/home_view.dart';
import 'package:getx_authentication_google/views/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => LoginView(),
            binding: AuthenticationBinding()),
        GetPage(name: '/home', page: () => HomeView(), binding: HomeBinding())
      ],
    );
  }
}
