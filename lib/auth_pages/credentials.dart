import 'package:flutter/material.dart';
import 'package:proj/auth_pages/reusable_widget.dart';
import 'package:proj/start_pages/information_page.dart';
import 'package:proj/start_pages/landing_page.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const InformationPage()));
                },
                icon: const Icon(Icons.info_outline_rounded)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('lib/assets/IGNOU-Preview.png'),
                reusableTextField(
                    "Email", Icons.email_rounded, false, _emailTextController),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Password", Icons.key_rounded, true,
                    _passwordTextController),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingPage()),
                    );
                  },
                  child: const Text("Log In"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
