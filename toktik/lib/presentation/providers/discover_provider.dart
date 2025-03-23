import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  final videos = <List<VideoPost>>[];

  Future<void> loadNextPage() async {
    // todo: cargar videos
    notifyListeners();
  }
}