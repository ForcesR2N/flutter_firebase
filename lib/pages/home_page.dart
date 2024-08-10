import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'R I Z Z app',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 17,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(1),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.deepPurpleAccent,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      title: Text(
                        'User $index',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                      subtitle: Text(
                        'This is a post',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
