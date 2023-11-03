import 'package:flutter/material.dart';
import 'package:proj/home/course_details.dart';
import 'package:proj/home/home_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Card(
            color: Colors.blue,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: Text(
                "Quick Glance",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            'lib/assets/profile.jpg',
            width: 200,
          ),
        ),
        const Text(
          "Arghadeep Misra",
          style: TextStyle(fontSize: 20),
        ),
        const Text(
          "Enrollment Number : 2003628951",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                  color: Color.fromARGB(255, 247, 144, 84),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Running Semester\nBacklogs\nAttendence",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
              Card(
                  color: Color.fromARGB(255, 247, 144, 84),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("2nd\n2 Papers\n78%",
                        style: TextStyle(fontSize: 20)),
                  )),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                  color: Color.fromARGB(255, 91, 255, 132),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "2023 End Term Semester - Registered",
                      style: TextStyle(fontSize: 16),
                    ),
                  )),
            ],
          ),
        ),
        const Card(
          color: Color.fromARGB(255, 91, 255, 132),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Current Assignment Status - Recieved",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.more_vert_rounded,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CourseDetails()),
                );
              },
              child: const Text(
                "Course Details",
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.notification_add_rounded,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notifications()),
                );
              },
              child: const Text(
                "Notifications Panel",
              ),
            ),
          ],
        )
      ],
    );
  }
}
