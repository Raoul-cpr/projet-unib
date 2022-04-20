import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unib/donpage.dart';
import 'package:unib/ensavoirpluspage.dart';
import 'package:unib/listeDonPage.dart';

class Paged extends StatefulWidget {
  const Paged({Key? key}) : super(key: key);

  @override
  State<Paged> createState() => _PagedState();
}

class _PagedState extends State<Paged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'asset/image0.jpg',
          //fit: BoxFit.cover,
          height: 56,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              //height: 120,
              //width: 250,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(233, 25, 239, 178),
                  width: 2,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.wallet,
                      color: Colors.green,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "2 000 900 FCFA",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text(
                    "Dons recents",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 11,
                  ),
                  height: 1,
                  width: 200,
                  color: Colors.black12,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              height: 300,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      //height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.blueAccent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Kabre Maghid Inoussa  43 000 FCFA",
                        style: GoogleFonts.roboto(
                          color: Colors.blueAccent,
                          //fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 245,
                      ),
                      height: 4,
                      width: 2,
                      color: Colors.black12,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        right: 245,
                      ),
                      child: Icon(
                        FontAwesomeIcons.plus,
                        color: Colors.green,
                        size: 15,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 247,
                      ),
                      height: 4,
                      width: 2,
                      color: Colors.black12,
                    ),
                    Container(
                      //height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.blueAccent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Nikiema Mounira 1 010 FCFA",
                        style: GoogleFonts.roboto(
                          color: Colors.blueAccent,
                          //fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 245,
                      ),
                      height: 4,
                      width: 2,
                      color: Colors.black12,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        right: 245,
                      ),
                      child: Icon(
                        FontAwesomeIcons.plus,
                        color: Colors.green,
                        size: 15,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 245,
                      ),
                      height: 4,
                      width: 2,
                      color: Colors.black12,
                    ),
                    Container(
                      //height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.blueAccent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Compaore Elodie 23 660 FCFA",
                        style: GoogleFonts.roboto(
                          color: Colors.blueAccent,
                          //fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 245,
                      ),
                      height: 4,
                      width: 2,
                      color: Colors.black12,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        right: 245,
                      ),
                      child: Icon(
                        FontAwesomeIcons.plus,
                        color: Colors.green,
                        size: 15,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 245,
                      ),
                      height: 4,
                      width: 2,
                      color: Colors.black12,
                    ),
                    Container(
                      // height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.blueAccent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Zougmooré Doriana 97 000 FCFA",
                        style: GoogleFonts.roboto(
                          color: Colors.blueAccent,
                          //fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 245,
                      ),
                      height: 4,
                      width: 2,
                      color: Colors.black12,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        right: 245,
                      ),
                      child: Icon(
                        FontAwesomeIcons.plus,
                        color: Colors.green,
                        size: 15,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 245,
                      ),
                      height: 4,
                      width: 2,
                      color: Colors.black12,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Donpage(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    height: 70,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(
                          color: Color.fromARGB(233, 25, 239, 178),
                        )),
                    //alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.handHoldingHeart,
                          color: Colors.red,
                          size: 25,
                        ),
                        Text(
                          "Don",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
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
                        builder: (context) => ListDonPage(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    height: 70,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(
                          color: Color.fromARGB(233, 25, 239, 178),
                        )),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.list,
                          color: Color.fromARGB(255, 11, 123, 214),
                          size: 25,
                        ),
                        Text(
                          "Liste des dons",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
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
                        builder: (context) => EnSavoirPage(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    height: 70,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(
                          color: Color.fromARGB(233, 25, 239, 178),
                        )),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.info,
                          color: Color.fromARGB(255, 237, 204, 41),
                          size: 25,
                        ),
                        Text(
                          "En savoir plus",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Container(),
              flex: 2,
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              decoration: BoxDecoration(
                color: Color.fromARGB(233, 25, 239, 178),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "Compaoré Raoul",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Raoul2compaoré@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            /*Container(
              width: double.infinity,
              color: Color.fromARGB(233, 25, 239, 178),
              child: Column(
                children: [
                  Text(
                    "Compaore Raoul",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Raoul2compaore@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
