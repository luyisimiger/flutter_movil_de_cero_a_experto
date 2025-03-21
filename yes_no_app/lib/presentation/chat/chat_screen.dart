import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://www.cartagena.gov.co/sites/default/files/Alcaldia_logo_2025_2.png",
              scale: 0.1
            ),
          )
        ),
        title: Text("App Bar 2"),
      ),
    );
  }
}