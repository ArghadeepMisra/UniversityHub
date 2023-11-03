import 'package:flutter/material.dart';

import 'package:proj/messege_build/new_chat.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.network(
        "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/3d%20icons%2Fmegaphone-dynamic-color.png?alt=media&token=da918ddb-1a86-42ce-854d-676a5617c439",
        width: 200,
      ),
      const Text(
        "Text Room For",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent),
      ),
      const Text(
        "2023 BCA Students",
        style: TextStyle(fontSize: 35),
      ),
      const SizedBox(
        height: 20,
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NewChat()),
            );
          },
          child: const Text(
            "Enter Chat",
            style: TextStyle(fontSize: 25),
          ))
    ]);
  }
}
