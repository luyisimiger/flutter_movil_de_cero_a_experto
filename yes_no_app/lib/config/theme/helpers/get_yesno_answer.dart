import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yesno_model.dart';

class GetYesnoAnswer {
  
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get("https://yesno.wtf/api");
    final yesnoModel = YesNoModel.fromJsonMap(response.data);

    return Message(
      text: yesnoModel.answer, 
      type: MessageType.others, 
      imageUrl: yesnoModel.image
    );
  }
}