import 'package:flutter/material.dart';
import 'package:flutter_firebase/components/my_button.dart';
import 'package:flutter_firebase/components/my_textField.dart';
import 'package:flutter_firebase/pages/home_page.dart';
import 'package:flutter_firebase/components/navbar.dart';

class LoginPage extends StatelessWidget {
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final String email = "rizal";
  final int pw = 27;

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
              const SizedBox(height: 50),
              //email
              MyTextfield(
                txtHint: "Email",
                txtObsure: false,
                controller: emailController,
              ),
              const SizedBox(height: 17),
              //password
              MyTextfield(
                txtHint: "Password",
                txtObsure: true,
                controller: passwordController,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
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
                text: "Login",
                onTap: () {
                  if (email == emailController.text &&
                      pw == int.tryParse(passwordController.text)) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Navbar()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("login failed"),
                    ));
                  }
                },
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have any account?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      " Register here",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
