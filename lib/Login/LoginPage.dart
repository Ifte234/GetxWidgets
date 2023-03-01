import 'package:color_grading_switch/Login/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Using Getx'),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextFormField(
              controller: loginController.emailController.value,
              decoration: InputDecoration(
                hintText: 'Enter Your Email'
              ),
            ),
            TextFormField(
              controller: loginController.passwordController.value,
              decoration: InputDecoration(
                  hintText: 'Enter Your Password'
              ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
loginController.loginApi();
              },
              child: Container(
                color: Colors.blueGrey,
                height: 45,
                child: Center(child: Text('Login'),),
              ),
            )

          ],
        ),
      )
    );
  }
}
