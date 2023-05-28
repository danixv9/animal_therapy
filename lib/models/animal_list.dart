return Card(
  margin = EdgeInsets.all(8),
  child = Padding(
    padding: const EdgeInsets.all(8),
    child: ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(animal.imageUrl),
      ),
      title: Text(
        animal.name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(animal.description),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimalDetails(animal: animal),
          ),
        );
      },
    ),
  ),
);
