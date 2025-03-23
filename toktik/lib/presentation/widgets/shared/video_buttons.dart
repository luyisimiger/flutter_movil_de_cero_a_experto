import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButttons extends StatelessWidget {
  
  final VideoPost video;

  const VideoButttons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: video.likes, color: Colors.red, iconData: Icons.favorite,),
        const SizedBox(height: 20,),
        _CustomIconButton(value: video.views, color: Colors.white, iconData: Icons.remove_red_eye_outlined,),
        const SizedBox(height: 20,),
        BounceInDown(
          child: SpinPerfect(
            infinite: true,
            duration: const Duration(seconds: 5),
            child: _CustomIconButton(value: 0, color: Colors.yellow, iconData: Icons.play_circle_outline,)
          ),
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton({required this.value, required this.iconData, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconData, size: 30,),
          color: color
        ),
        if (value != 0) Text(HumanFormats.readableNumber(value.toDouble()))
      ],
    );
  }
}