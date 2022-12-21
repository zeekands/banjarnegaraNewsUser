import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../crud/formPage.dart';
import '../../../crud/homePage.dart';

class ArticlesPage extends StatelessWidget {
  ArticlesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    CollectionReference _articles = _firestore.collection('articles');

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Artikel",
          style: TextStyle(color: Colors.red[700], fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: HomePage(),
      //drawer: DrawerMenu(),
    );
  }
}
