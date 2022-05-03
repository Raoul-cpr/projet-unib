import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unib/main.dart';
import 'package:unib/paged.dart';
import 'package:unib/textfield.dart';
import 'package:unib/utils/util.dart';

import 'authMethods.dart';
import 'identifyPage.dart';

class ConnectPage extends StatefulWidget {
  const ConnectPage({Key? key}) : super(key: key);

  @override
  State<ConnectPage> createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passWordController.dispose();
  }

  void connectUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().connect(
      email: _emailController.text,
      password: _passWordController.text,
    );
    setState(() {
      _isLoading = false;
    });

    if (res == 'Succes') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Paged()));
    } else {
      showSnackBar(res, context);
    }
  }

  navigateToIdentifyPage() {
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
                      "Veuillez entrer ces informations pour vous connecter",
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
                  height: 60,
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
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Textfield(
                      controller: _passWordController,
                      hintText: "Mot de passe",
                      obscureText: true,
                    )),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: connectUser,
                  child: Container(
                    //height: 50,
                    //width: 300,
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
                  height: 30,
                ),
                Text(
                  "Mot de passe oublié",
                  style: GoogleFonts.raleway(
                    color: Colors.blueAccent,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 135,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vous n'avez pas de compte?",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IdentifyPage()));
                      },
                      child: Text(
                        "Creer un compte",
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
