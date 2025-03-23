import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {

  final VideoPostsRepository videoRepository;

  bool initialLoading = true;
  final videos = <VideoPost>[];

  DiscoverProvider({
    required this.videoRepository
  });

  Future<void> loadNextPage() async {
    
    // await Future.delayed(Duration(milliseconds: 1500));

    /* final videos = videoPosts.map(
      (video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity()
    ).toList(); */

    final videos = await videoRepository.getTrendingVideosByPage(1);

    this.videos.addAll(videos);
    initialLoading = false;
    notifyListeners();
  }
}