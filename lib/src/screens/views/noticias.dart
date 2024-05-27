import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const NewsItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Add padding to separate content from the border
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0), // Add rounded corners
            child: SizedBox(
              width: 80.0,
              height: 80.0,
              child: Image.network(imageUrl),
            ),
          ),
          const SizedBox(width: 8.0), // Add spacing between image and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // Add padding to ListView for horizontal spacing
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: newsItems.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const Divider(
                height: 20,
                color: Colors.transparent,
              ),
              NewsItem(
                imageUrl: newsItems[index].imageUrl,
                title: newsItems[index].title,
                description: newsItems[index].description,
              ),
            ],
          );
        },
      ),
    );
  }
}

List<NewsItem> newsItems = [
  const NewsItem(
    imageUrl:
        'https://th.bing.com/th/id/R.3726b36db22a8d35f121b91c23528612?rik=%2bhVspPIqHdYlTw&riu=http%3a%2f%2ftecuruapan.edu.mx%2fwp-content%2fuploads%2f2017%2f10%2flogo_simbolo2.png&ehk=VL%2fQ2gfiaKqm5w2PhwQHWE6Cm8cFdZQNejd85gRlzac%3d&risl=&pid=ImgRaw&r=0',
    title: 'Vacuna aplicada',
    description:
        'Su mascota a recidbido la vacuna contra la rabia el dia 20 de mayo',
  ),
  const NewsItem(
    imageUrl:
        'https://th.bing.com/th/id/OIP.miuBpzTyZgYsc1vXrIF8xQHaER?rs=1&pid=ImgDetMain',
    title: 'Un exito de commit',
    description:
        'El evento del pasado viernes 15 a sido de los mas grande en el tecnologico',
  ),

  const NewsItem(
    imageUrl: 'https://i.ytimg.com/vi/9w4g8BVWR6U/maxresdefault.jpg',
    title: 'El Asta de la patria',
    description: 'Nueva hasta de la bandera en el Tecnologico',
  ),
  const NewsItem(
    imageUrl: 'https://i.ytimg.com/vi/9w4g8BVWR6U/maxresdefault.jpg',
    title: 'Proxima cita',
    description: 'Cita reservada para el proximo viernes 22 de octubre',
  ),

  // ... más noticias
];
