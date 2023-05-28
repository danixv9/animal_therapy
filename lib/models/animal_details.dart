return Scaffold(
  appBar = AppBar(
    title: Text(animal.name),
  ),
  body = SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(animal.imageUrl),
          ),
          SizedBox(height: 16),
          Text(
            animal.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            animal.description,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  ),
);

