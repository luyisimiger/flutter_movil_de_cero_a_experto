import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class GetYesnoAnswer {
  
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final resp = await _dio.get("https://yesno.wtf/api");
    
    throw UnimplementedError();
  }
}