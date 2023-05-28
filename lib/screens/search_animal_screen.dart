import 'package:flutter/material.dart';

class SearchAnimalsScreen extends StatefulWidget {
  const SearchAnimalsScreen({super.key});

  @override
  _SearchAnimalsScreenState createState() => _SearchAnimalsScreenState();
}

class _SearchAnimalsScreenState extends State<SearchAnimalsScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Animals'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search for animals...',
                fillColor: Colors.grey.shade200,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          // TODO: Implement the search functionality and display search results
        ],
      ),
    );
  }
}
