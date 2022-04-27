import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

Future<void> deconnexion() async {
  await FirebaseAuth.instance.signOut();
}
