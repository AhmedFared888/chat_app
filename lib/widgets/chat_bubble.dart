import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  ChatBubble({super.key, required this.message});

  final Message message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(
            // minWidth: 20.0,
            maxWidth: MediaQuery.of(context).size.width * 0.7,
            //minHeight: 40.0, // Set max width to 70% of screen width
          ),
          //alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 16, right: 25, top: 25, bottom: 25),
          margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            color: kPrimaryColor,
          ),
          child: Text(
            message.message,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class ChatBubbleForFriend extends StatelessWidget {
  ChatBubbleForFriend({super.key, required this.message});

  final Message message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          constraints: BoxConstraints(
            // minWidth: 20.0,
            maxWidth: MediaQuery.of(context).size.width * 0.7,
            //minHeight: 40.0, // Set max width to 70% of screen width
          ),
          //alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 16, right: 25, top: 25, bottom: 25),
          margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            ),
            color: Colors.lightBlue,
          ),
          child: Text(
            message.message,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
