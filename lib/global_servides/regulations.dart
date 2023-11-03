import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class Regulations extends StatelessWidget {
  const Regulations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rules and Regulations"),
        centerTitle: true,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Linkify(
                    text:
                        "Regional Center Rules & Regulations\n http://rcnoida.ignou.ac.in/Ignou-RC-Noida/userfiles/file/University%20Rules.pdf",
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
                    text:
                        "Common Prospectus of University\n http://ignou.ac.in/userfiles/Common-Prospectus-English.pdf",
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
                    text:
                        "University Authority og IGNOU\n http://ignou.ac.in/ignou/aboutignou/authority/member/detail/5304/Smt__Droupadi_Murmu-5304",
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
                    text:
                        "Institutes/Centres/Cells/Units\n http://ignou.ac.in/ignou/aboutignou/icc",
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
