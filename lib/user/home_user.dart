// ignore_for_file: implementation_imports

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePageUser extends StatelessWidget {
  const HomePageUser({super.key});

  void logOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login User'),
        actions: [
          IconButton(onPressed: logOut, icon: const Icon(Icons.logout)),
        ],
      ),
      body: const Center(
        child: Text('homepage'),
      ),
    );
  }
}
