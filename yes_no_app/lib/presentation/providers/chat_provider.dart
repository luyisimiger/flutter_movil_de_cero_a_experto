import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  
  List<Message> messages = [
    Message(text: "mensaje 1", type: MessageType.mine),
    Message(text: "mensaje 2", type: MessageType.others),
    Message(text: "mensaje 3", type: MessageType.others),
    Message(text: "mensaje 4", type: MessageType.mine),
    Message(text: "mensaje 5", type: MessageType.others)
  ];

  void sendMessage( String text) async {
    final newMessage = Message(text: text, type: MessageType.mine);
    messages.add(newMessage);

    notifyListeners();
  }
}