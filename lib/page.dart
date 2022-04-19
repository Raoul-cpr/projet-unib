import 'package:flutter/material.dart';

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
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "2 000 900 FCFA",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              height: 300,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Diallo Moctar 10 000 FCFA",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Zanpaligré Assana 180 000 FCFA",
                    style: TextStyle(
                      color: Color.fromARGB(255, 9, 56, 208),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Zongo Inoussa 80 000 FCFA",
                    style: TextStyle(
                      color: Color.fromARGB(255, 9, 56, 208),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Kabre Mohammed 18 000 FCFA",
                    style: TextStyle(
                      color: Color.fromARGB(255, 9, 56, 208),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  //padding: const EdgeInsets.symmetric(),
                  height: 80,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Don",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  //padding: const EdgeInsets.symmetric(),
                  height: 80,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Liste des dons",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  //padding: const EdgeInsets.symmetric(),
                  height: 80,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "En savoir plus",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
