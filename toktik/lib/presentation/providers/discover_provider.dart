import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {

  // TODO: Repository, DataSource

  bool initialLoading = true;
  final videos = <VideoPost>[];

  Future<void> loadNextPage() async {
    
    await Future.delayed(Duration(milliseconds: 1500));

    final videos = videoPosts.map(
      (video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity()
    ).toList();

    this.videos.addAll(videos);
    initialLoading = false;
    notifyListeners();
  }
}