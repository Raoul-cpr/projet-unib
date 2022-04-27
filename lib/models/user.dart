import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unib/models/user.dart';

class User {
  final String uid;
  final String email;
  final String fullName;

  const User({
    required this.uid,
    required this.email,
    required this.fullName,
  });

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "email": email,
        "fullName": fullName,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      uid: snapshot["uid"],
      email: snapshot["email"],
      fullName: snapshot["fullName"],
    );
  }
}
