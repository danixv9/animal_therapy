import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: 10, // Replace this with the number of favorite animals
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('path/to/animal/image'), // Replace with the animal's image
            ),
            title: const Text('Animal name'), // Replace with the animal's name
            subtitle: const Text('Animal description'), // Replace with a short description of the animal
            trailing: IconButton(
              icon: const Icon(Icons.favorite, color: Colors.red),
              onPressed: () {
                // TODO: Implement removing the animal from favorites
              },
            ),
          );
        },
      ),
    );
  }
}


