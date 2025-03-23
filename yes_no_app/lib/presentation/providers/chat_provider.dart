import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/helpers/get_yesno_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  
  final chatScroll = ScrollController();
  final getterAnswer = GetYesnoAnswer();

  List<Message> messages = [];

  void sendMessage( String text) async {
    
    if (text.isEmpty) return;

    final newMessage = Message(text: text, type: MessageType.mine);
    messages.add(newMessage);


    if (text.endsWith("?")) {
      herReply();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  void herReply() async {
    final herMessage = await getterAnswer.getAnswer();
    messages.add(herMessage);
    
    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom() async {

    await Future.delayed(Duration(milliseconds: 200));

    chatScroll.animateTo(chatScroll.position.maxScrollExtent, duration: Duration(microseconds: 300), curve: Curves.easeOut);
  }
}