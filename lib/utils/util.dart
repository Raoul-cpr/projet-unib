import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unib/connectPage.dart';

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

Future<void> deconnexion(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => ConnectPage()));
}
