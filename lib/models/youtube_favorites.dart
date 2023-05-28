import 'package:flutter/material.dart';
import 'package:animal_therapy/services/youtube_service.dart';

class YoutubeFavorites extends StatefulWidget {
  const YoutubeFavorites({super.key});

  @override
  _YoutubeFavoritesState createState() => _YoutubeFavoritesState();
}

class _YoutubeFavoritesState extends State<YoutubeFavorites> {
  final TextEditingController _urlController = TextEditingController();
  final YoutubeService _youtubeService = YoutubeService();
  final List<String> _favoriteUrls = [];

  void _addFavorite(String url) {
    setState(() {
      _favoriteUrls.add(url);
    });
    _urlController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('YouTube Favorites')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _urlController,
              decoration: const InputDecoration(
                hintText: 'Enter YouTube video URL',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          RaisedButton(
            onPressed: () async {
              String videoId = _youtubeService.extractVideoId(_urlController.text);
              if (videoId != null) {
                _addFavorite(_urlController.text);
              } else {
                Scaffold.of(context).showSnackBar(
                  const SnackBar(content: Text('Invalid YouTube video URL')),
                );
              }
            },
            child: const Text('Add to Favorites'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _favoriteUrls.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_favoriteUrls[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


class YoutubeService {
  String? extractVideoId(String url) {
    RegExp regExp = RegExp(
      r'(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})',
      caseSensitive: false,
      multiLine: false,
    );
    Match? match = regExp.firstMatch(url);
    return match != null && match.groupCount >= 1 ? match.group(1) : null;
  }
}

