import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SocialShare extends StatelessWidget {
  final String content;

  const SocialShare({super.key, required this.content});

  void _shareContent() {
    Share.share(content);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.share),
      onPressed: _shareContent,
    );
  }
}
