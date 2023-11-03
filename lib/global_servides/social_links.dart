import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Social Links"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/3d%20icons%2Fat-dynamic-color.png?alt=media&token=5fcbe43e-e838-4b61-a73e-70b5c7862ca5",
                width: 50,
              ),
              const Card(
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Linkify(
                    text: "Facebook https://IGNOU_RC/facebook.com",
                    options: LinkifyOptions(humanize: true),
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Linkify(
                    text: "YouTube https://IGNOU_RC/youtube.com",
                    options: LinkifyOptions(humanize: true),
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Linkify(
                    text: "Twitter (X) https://IGNOU_RC/twitter.com",
                    options: LinkifyOptions(humanize: true),
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Linkify(
                    text: "Official Website https://ignou.ac.com",
                    options: LinkifyOptions(humanize: true),
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
