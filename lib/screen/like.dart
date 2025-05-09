import 'package:flutter/material.dart';
import 'package:rideapp/screen/detail.dart';
import 'package:rideapp/entity/content.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({super.key});

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {

  final List<Content> items = [
    Content(
      title: 'Futbolito Vilches FC',
      subtitle: 'Best field in the mountains.',
      description: 'A great place to play soccer with friends.',
      date: 'May 9, 2025',
      imagePath: 'assets/images/soccer.jpg',
      like: true,
      comments: 12,
      likes: 34,
      people: 8,
    ),
    Content(
      title: 'Route 68 - Chile',
      subtitle: 'Restorant in route to Iloca',
      description: 'A great place to eat in the route.',
      date: 'May 8, 2025',
      imagePath: 'assets/images/badburger.jpg',
      like: false,
      comments: 6,
      likes: 4,
      people: 79,
    ),
    Content(
      title: 'Rustik Coffee Bar',
      subtitle: 'The best coffe in the Town.',
      description: 'A great place to drink coffee with friends.',
      date: 'May 7, 2025',
      imagePath: 'assets/images/rustik.jpg',
      like: true,
      comments: 34,
      likes: 79,
      people: 156,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Likes'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: 
          ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              //return _detailCardItem(context, title: items[index]["title"], subtitle: items[index]["subtitle"], date: items[index]["date"], imagePath: items[index]["imagePath"]);
              return card(items[index], context);
            },
          )
      );
  }
}

Widget card(Content item,BuildContext context) {
  return GestureDetector(
    onTap: () {
      // Handle tap event
      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(
        content: item,
      )));
    },
    child: Card(
      color: Colors.yellow[50],
      elevation: 8.0,
      margin: EdgeInsets.all(4.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(item.imagePath),
                fit: BoxFit.cover,
              ),
            ),
            height: MediaQuery.of(context).size.width * (3 / 4),
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Positioned(
            bottom: 56.0,
            left: 16.0,
            right: 16.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  item.subtitle,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  item.date,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16.0,
            right: 16.0,
            child: Icon(
              item.like ? Icons.thumb_up : Icons.thumb_down,
              color: item.like ? Colors.green : Colors.red,
              size: 32.0,
            ),
          ),
          Positioned(
            bottom: 8.0,
            left: 16.0,
            right: 16.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _iconWithText(Icons.comment, item.comments, Colors.white),
                _iconWithText(Icons.thumb_up, item.likes, Colors.white),
                _iconWithText(Icons.person, item.people, Colors.white),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _iconWithText(IconData icon, int text, Color color) {
  return Row(
    children: [
      Icon(icon, color: color, size: 20.0),
      SizedBox(width: 4.0),
      Text(
        text.toString(),
        style: TextStyle(color: color, fontSize: 14.0),
      ),
    ],
  );
}



