import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unib/paged.dart';
import 'package:unib/textfield.dart';
import 'package:unib/utils/util.dart';

import 'authMethods.dart';
import 'connectPage.dart';

class IdentifyPage extends StatefulWidget {
  const IdentifyPage({
    Key? key,
  }) : super(key: key);

  @override
  State<IdentifyPage> createState() => _IdentifyPageState();
}

class _IdentifyPageState extends State<IdentifyPage> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  bool _isLoading = false;
  bool obscure = true;

  @override
  void dispose() {
    super.dispose();
    _fullNameController.dispose();
    _emailController.dispose();
    _passWordController.dispose();
  }

  void signInUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().signIn(
      email: _emailController.text,
      fullName: _fullNameController.text,
      passWord: _passWordController.text,
      context: context,
    );
    setState(() {
      _isLoading = false;
    });

    if (res == 'Succes' ||
        FirebaseAuth.instance.currentUser?.emailVerified == true) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Paged()));
    } else {
      showSnackBar(res, context);
    }
  }

  navigateToConnectPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const IdentifyPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            //height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Image.asset(
                  'asset/image0.jpg',
                  height: 45,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      "Bienvenue sur Unib, veillez entrer ces informations pour pouvoir faire un don, si vous preferez etre dans l'anonymat, marquez anonyme",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Textfield(
                      controller: _fullNameController,
                      hintText: "Nom complet",
                      obscureText: false,
                    )),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Textfield(
                      controller: _emailController,
                      hintText: "Adresse email",
                      obscureText: false,
                    )),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Textfield(
                        controller: _passWordController,
                        hintText: "Mot de passe",
                        obscureText: obscure,
                      ),
                    ),
                    IconButton(
                      padding: const EdgeInsets.only(right: 20),
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      } /*je met une fonction ici */,
                      icon: FaIcon(
                        obscure
                            ? FontAwesomeIcons.eye
                            : FontAwesomeIcons.eyeLowVision,
                      ),

                      // size: 15,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: signInUser,
                  child: Container(
                    //height: 50,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(233, 25, 239, 178),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: _isLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : const Text(
                            "Creer un compte",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vous avez deja un compte?",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ConnectPage()));
                      },
                      child: Text(
                        "Se connecter",
                        style: GoogleFonts.raleway(
                          color: Colors.blueAccent,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
