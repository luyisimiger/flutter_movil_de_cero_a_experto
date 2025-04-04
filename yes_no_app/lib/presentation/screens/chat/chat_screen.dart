import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/shared/message_field_box.dart';

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
        title: Text("Mi amor"),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    final chatProvider = context.watch<ChatProvider>();
    
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScroll,
                itemCount: chatProvider.messages.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messages[index];
                  return ( message.type == MessageType.others )
                  ? HerMessageBubble(message: message)
                  : MyMessageBubble(message: message);
                },
              )
            ),

            MessageFieldBox(
              // onValue: (String value) => chatProvider.sendMessage(value)
              onValue: chatProvider.sendMessage
            )
          ],
        ),
      ),
    );
  }
}