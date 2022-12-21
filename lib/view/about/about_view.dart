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
          "About Us",
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
              "News App is an app that coudl provide you with the latest news and articles from all over the world. You can also add your own articles and news to the app. This app is made by a team of 3 people, namely: ",
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
                      title: Text("Gerald Prana Wibisono"),
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
            Text("Email: news@newsupdate.com"),
            SizedBox(height: 10),
            Text("Facebook: news@newsupdate.com"),
            SizedBox(height: 10),
            Text("Twitter: news@newsupdate.com"),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
