import 'package:animal_therapy/local_storage.dart';
import 'package:animal_therapy/cloud_storage.dart';
import 'package:animal_therapy/user_preferences.dart';
import 'package:animal_therapy/video_repository.dart';
import 'package:animal_therapy/error_handler.dart';
import 'package:animal_therapy/social_share.dart';
import 'package:animal_therapy/video_upload_screen.dart';
import 'package:animal_therapy/emotion_filter.dart';
import 'package:animal_therapy/user_profile_screen.dart';
import 'package:animal_therapy/animal_therapy_service.dart';
import 'package:animal_therapy/video_player.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Dependencies extends StatelessWidget {
  final Widget child;

  const Dependencies({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LocalStorage>(create: (_) => LocalStorage()),
        Provider<CloudStorage>(create: (_) => CloudStorage()),
        Provider<UserPreferences>(create: (_) => UserPreferences()),
        Provider<VideoRepository>(create: (_) => VideoRepository()),
        Provider<ErrorHandler>(create: (_) => ErrorHandler()),
        Provider<SocialShare>(create: (_) => SocialShare()),
        Provider<VideoUploadScreen>(create: (_) => VideoUploadScreen()),
        Provider<EmotionFilter>(create: (_) => EmotionFilter()),
        Provider<UserProfileScreen>(create: (_) => UserProfileScreen()),
        Provider<AnimalTherapyService>(create: (_) => AnimalTherapyService()),
        Provider<VideoPlayer>(create: (_) => VideoPlayer()),
      ],
      child: child,
    );
  }
}
