import 'package:flutter/material.dart';
import 'package:flutter_firebase/components/my_button.dart';
import 'package:flutter_firebase/components/my_textField.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();

  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
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
              const SizedBox(height: 8),
              const Text(
                "R i z z A p p",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 55),
              //username
              MyTextfield(
                txtHint: "Username",
                txtObsure: false,
                controller: usernameController,
              ),
              const SizedBox(height: 15),
              //email
              MyTextfield(
                txtHint: "Email",
                txtObsure: false,
                controller: emailController,
              ),
              const SizedBox(height: 15),
              //password
              MyTextfield(
                txtHint: "Password",
                txtObsure: true,
                controller: passwordController,
              ),
              const SizedBox(height: 10),
              //confirm password
              MyTextfield(
                txtHint: "Confirm password",
                txtObsure: true,
                controller: confirmPwController,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Your Password?",
                    style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                text: "Register",
                onTap: register,
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  GestureDetector(
                      onTap: onTap,
                      child: const Text(" Login here",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
