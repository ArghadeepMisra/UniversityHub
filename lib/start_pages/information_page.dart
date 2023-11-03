import 'package:flutter/material.dart';
import 'package:proj/information_pages/contact_us.dart';
import 'package:proj/information_pages/mailing_list.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPage();
}

class _InformationPage extends State<InformationPage> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Information"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('lib/assets/IGNOU-Preview.png'),
              const Text(
                "INDIRA GANDHI NATIONAL OPEN UNIVERSITY",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "IGNOU is a CENTRAL UNIVERSITY established by an Act of Parliament in 1985 (Act No. 50 of 1985). IGNOU Degrees/Diplomas/ Certificates are recognised by all the member institutions of the Association of Indian Universities (AIU) and are at par with Degrees/ Diplomas/ Certificates of all Indian Universities/Deemed Universities/ Institutions.",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "IGNOU has been awarded A Plus Plus grade by the NAAC",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Mailing_List()),
                      );
                    },
                    child: const Text("Mailing List"),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactUs()),
                      );
                    },
                    child: const Text("Contact Us"),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
