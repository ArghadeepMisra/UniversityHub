import 'package:flutter/material.dart';
import 'package:proj/start_pages/drawer_page.dart';
import 'package:proj/start_pages/information_page.dart';
import 'package:proj/nav_pages/academics_nav.dart';
import 'package:proj/nav_pages/chat_nav.dart';
import 'package:proj/nav_pages/home_nav.dart';
import 'package:proj/nav_pages/idcard_nac.dart';
import 'package:proj/nav_pages/services_nav.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int myIndex = 0;
  List<Widget> widgetList = const [
    Home(),
    Chat(),
    Services(),
    Academics(),
    IDCard(),
  ];
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("University Hub"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const InformationPage()));
              },
              icon: const Icon(Icons.info_outline_rounded)),
        ],
      ),
      drawer: const DrawerPage(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widgetList[myIndex],
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_rounded), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.online_prediction_rounded), label: "Services"),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_outlined), label: "Academics"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_emergency_rounded), label: "ID Card")
          ]),
    );
  }
}
