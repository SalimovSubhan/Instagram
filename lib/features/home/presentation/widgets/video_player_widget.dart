import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends HookConsumerWidget {
  final String? url;
  const VideoPlayerWidget({super.key, required this.url});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInitialized = useState<bool>(false);
    final chewieController = useState<ChewieController?>(null);
    final videoPlayerController = useMemoized(
      () {
        if (url == null || url!.isEmpty) return null;
        return VideoPlayerController.networkUrl(Uri.parse(url!));
      },
      [url],
    );

    useEffect(() {
      if (videoPlayerController == null) return null;

      void initializeVideo() async {
        try {
          await videoPlayerController!.initialize();
          if (!context.mounted) return;

          chewieController.value = ChewieController(
            videoPlayerController: videoPlayerController!,
            autoPlay: false,
            looping: true,
            showControls: true,
            allowFullScreen: true,
            allowMuting: true,
            errorBuilder: (context, errorMessage) {
              return Center(
                child: Text(errorMessage),
              );
            },
          );
          isInitialized.value = true;
        } catch (e) {
          debugPrint('Video initialization error: $e');
        }
      }

      initializeVideo();

      return () {
        videoPlayerController?.dispose();
        chewieController.value?.dispose();
      };
    }, [videoPlayerController]);

    if (!isInitialized.value || chewieController.value == null) {
      return const SizedBox(
        height: 300,
        child: Center(child: CircularProgressIndicator()),
      );
    }

    return Chewie(controller: chewieController.value!);
  }
}
