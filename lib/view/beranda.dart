import 'package:banjarnegaranews/view/home.dart';
import 'package:banjarnegaranews/view/page/articles/articles_page.dart';
import 'package:banjarnegaranews/view/page/general/generalNews.dart';
import 'package:flutter/material.dart';

import 'about/about_view.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = GeneralNews();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 16,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  setState(
                    () {
                      currentScreen = GeneralNews();
                      currentTab = 0;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: currentTab == 0 ? Colors.red : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: currentTab == 0 ? Colors.red : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = ArticlesPage();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.article,
                      color: currentTab == 1 ? Colors.red : Colors.grey,
                    ),
                    Text(
                      "Artikel",
                      style: TextStyle(
                          color: currentTab == 1 ? Colors.red : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = AboutView();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: currentTab == 2 ? Colors.red : Colors.grey,
                    ),
                    Text(
                      "Tentang Kami",
                      style: TextStyle(
                          color: currentTab == 2 ? Colors.red : Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
