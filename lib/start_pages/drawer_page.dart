import 'package:flutter/material.dart';
import 'package:proj/auth_pages/credentials.dart';
import 'package:proj/global_servides/regulations.dart';
import 'package:proj/global_servides/report.dart';
import 'package:proj/global_servides/social_links.dart';
import 'package:proj/sidebar_pages/personal%20details/personal_details.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('lib/assets/profile.jpg'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.account_circle_sharp),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PersonalDetails()),
                  );
                },
                child: const Text(
                  "Profile Details",
                  style: TextStyle(fontSize: 24),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.warning_amber_rounded),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReportServices()),
                  );
                },
                child: const Text(
                  "Report Issue",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.social_distance_rounded),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SocialLinks()),
                  );
                },
                child: const Text(
                  "Social Links",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.rule_sharp),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Regulations()),
                  );
                },
                child: const Text(
                  "Regulations",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SigninScreen()),
              );
            },
            child: const Text("Log Out"),
          ),
        ],
      ),
    );
  }
}
