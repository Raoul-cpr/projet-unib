import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:unib/connectPage.dart';
import 'package:unib/paged.dart';
import 'package:unib/utils/util.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  bool isVerify = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    isVerify = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isVerify) {
      sendVerificationEmail();
      timer = Timer.periodic(
        Duration(seconds: 3),
        (_) => checkEmailVerification(),
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future checkEmailVerification() async {
    await FirebaseAuth.instance.currentUser!.reload();
    setState(() {
      isVerify = FirebaseAuth.instance.currentUser!.emailVerified;
    });
    if (isVerify) timer?.cancel();
    if (isVerify) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Paged()));
    }
  }

  Future sendVerificationEmail() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      user.sendEmailVerification();
    } catch (e) {
      showSnackBar(e.toString(), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Verification de l'email",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Text(
                  "Nous vous avons envoyé un email de verification",
                  style: GoogleFonts.alef(fontSize: 25, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
