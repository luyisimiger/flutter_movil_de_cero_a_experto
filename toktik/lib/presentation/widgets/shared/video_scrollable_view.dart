import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik/presentation/widgets/video/fullscreen_player.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPost = videos[index];
        return Stack(
          children: [
            
            //video-player + gradiente
            SizedBox.expand(
              child: FullScreenPlayer(caption: videoPost.caption,videoUrl: videoPost.url,)
            ),
                        
            // Botones
            Positioned(
              bottom: 50,
              right: 20,
              child: VideoButttons(video: videoPost)
            ),

          ],
        );
      },
    );
  }
}