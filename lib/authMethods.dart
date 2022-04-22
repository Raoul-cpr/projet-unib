import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signIn(
      {required String email,
      required String uName,
      required String passWord}) async {
    String res = 'Some error occure';
    try {
      if (email.isNotEmpty || uName.isNotEmpty || passWord.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: passWord);
        print(cred.user!.uid);

        await _firestore.collection("users").doc(cred.user!.uid).set({
          'nom': uName,
          'email': email,
        });
        res = 'Succes';
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  Future<String> connect(
      {required String email, required String password}) async {
    String res = "Some error occure";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'Succes';
      } else {
        res = "Entrer tout les champs SVP";
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
