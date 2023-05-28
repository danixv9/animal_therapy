import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final String sender;
  final bool isCurrentUser;

  const MessageBubble({super.key, required this.text, required this.sender, required this.isCurrentUser});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          Material(
            borderRadius: BorderRadius.only(
              topLeft: isCurrentUser ? const Radius.circular(15) : Radius.zero,
              topRight: isCurrentUser ? Radius.zero : const Radius.circular(15
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
            ),
                            elevation: 5,
            color: isCurrentUser ? Colors.lightBlueAccent : Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  color: isCurrentUser ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


