import 'package:flutter/material.dart';
import 'package:proj/academic_pages/academic_pages.dart';

class Academics extends StatelessWidget {
  const Academics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.network(
        "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/3d%20icons%2Fnotebook-dynamic-color.png?alt=media&token=c644a0d1-4f53-42a8-a34a-b7853c256903",
        fit: BoxFit.cover,
      ),
      const SizedBox(
        height: 20,
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AcademicPages()),
            );
          },
          child: const Text(
            "Access Your Academic Information",
            style: TextStyle(fontSize: 20),
          ))
    ]);
  }
}
