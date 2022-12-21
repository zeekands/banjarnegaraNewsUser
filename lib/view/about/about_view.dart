// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tentang Kami",
          style: TextStyle(color: Colors.red[700], fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What is this?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red[700],
              ),
            ),
            SizedBox(height: 10),
            Text(
              """Banjarnegara News dibuat tahun 2022 berbasis mobile agar anda mudah mendapatkan berita dan informasi
Selain membaca berita dan informasi anda juga dapat mempromosikan usaha anda dengan membuat artikel.""",
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Our Beloved Team",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red[700],
              ),
            ),
            SizedBox(height: 10),
            Flexible(
              fit: FlexFit.loose,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/logo.png"),
                      ),
                      title: Text("Gerall Prana Wibisono"),
                      subtitle: Text("Mobile Developer"),
                    ),
                  );
                },
              ),
            ),
            Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red[700],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "If you have any questions or suggestions, please contact us at: ",
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Text("Whatsapp: 089620494008"),
            SizedBox(height: 10),
            Text("Facebook: gerald prana"),
            SizedBox(height: 10),
            Text("Instagram: geraldpw__"),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
