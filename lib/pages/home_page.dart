import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Signed as ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8.0,),
            Text(
              user.email!,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 40,),
            ElevatedButton.icon(
            onPressed: () => FirebaseAuth.instance.signOut(),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50.0),
            ),
            icon: const Icon(Icons.logout),
            label: const Text(
              'Sign out',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
