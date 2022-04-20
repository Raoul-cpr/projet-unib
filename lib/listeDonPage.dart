import 'package:flutter/material.dart';

class ListDonPage extends StatefulWidget {
  const ListDonPage({Key? key}) : super(key: key);

  @override
  State<ListDonPage> createState() => _ListDonPageState();
}

class _ListDonPageState extends State<ListDonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          "La liste des Dons",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
