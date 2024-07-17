import 'package:flutter/material.dart';
import 'package:flutter_firebase/components/my_textField.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25),
              Text(
                "R i z z A p p",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 35),
              //email
              MyTextfield(
                txtHint: "Username",
                txtObsure: false,
                controller: emailController,
              ),
              //password
              MyTextfield(
                txtHint: "Password",
                txtObsure: true,
                controller: passwordController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
