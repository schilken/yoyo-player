import 'package:video_player/video_player.dart';

/// Extensions for the [VideoPlayerController]'s object.
extension VideoControllerExtension on VideoPlayerController {
  /// Extension to forward the video's current position.
  Future<void> forward() async {
    if (value.duration.inSeconds - value.position.inSeconds > 10) {
      return seekTo(Duration(seconds: value.position.inSeconds + 10));
    }
  }

  Future<void> fastForward() async {
    if (value.duration.inSeconds - value.position.inSeconds > 60) {
      return seekTo(Duration(seconds: value.position.inSeconds + 60));
    }
  }

  /// Extension to rewind the video's current position.
  Future<void> rewind() async {
    if (value.position.inSeconds > 10) {
      return seekTo(Duration(seconds: value.position.inSeconds - 10));
    } else {
      return seekTo(const Duration(seconds: 0));
    }
  }

  Future<void> fastRewind() async {
    if (value.position.inSeconds > 50) {
      return seekTo(Duration(seconds: value.position.inSeconds - 50));
    } else {
      return seekTo(const Duration(seconds: 0));
    }
  }
}
