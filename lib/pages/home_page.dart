import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('R I Z Z not',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('clicked');
          },
          child: const Text('home page'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.deepPurple,
    );
  }
}
