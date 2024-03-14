import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik/presentation/widgets/video/fullscreen_videoplayer.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics:
          const BouncingScrollPhysics(), // Esta propiedad es para que se active el efecto en Android
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            // Video player and gradient
            SizedBox.expand(
                child: FullScreenVideoPlayer(
              videoUrl: videoPost.videoUrl,
              caption: videoPost.caption,
            )),
            //Botones
            Positioned(
                bottom: 20, right: 20, child: VideoButtons(video: videoPost)),
          ],
        );
      },
    );
  }
}
