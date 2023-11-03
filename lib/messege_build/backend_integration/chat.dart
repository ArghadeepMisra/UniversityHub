import 'package:flutter/material.dart';
import 'package:proj/messege_build/backend_integration/chat_bubble.dart';

class ChatUI extends StatelessWidget {
  const ChatUI({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatBubble(
          text: 'Where is IGNOU Kolkata RC',
          isCurrentUser: false,
        ),
        ChatBubble(
          text: 'IDK, It is my first time',
          isCurrentUser: true,
        ),
        ChatBubble(
          text: 'Is it in Bikash Bhawan',
          isCurrentUser: false,
        ),
        ChatBubble(
          text: 'Maybe, lets go tomorrow',
          isCurrentUser: true,
        ),
        ChatBubble(
          text: 'Let\'s do it!',
          isCurrentUser: false,
        ),
      ],
    );
  }
}
