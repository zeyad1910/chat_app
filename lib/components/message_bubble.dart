import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String messageText;
  final String sender;
  bool isMe;
  MessageBubble(
      {required this.messageText, required this.sender, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(
          sender,
          style: TextStyle(
            fontSize: 13.0,
            color: Colors.black54,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Material(
            elevation: 5.0,
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))
                : BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
            color: isMe ? Colors.lightBlueAccent : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                messageText,
                style: TextStyle(
                    fontSize: 16.0,
                    color: isMe ? Colors.white : Colors.black54),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
