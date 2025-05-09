import 'package:flutter/material.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({super.key});

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  final List<Map<String, dynamic>> items = [
    {
      'title': 'Futbolito Vilches FC',
      'subtitle': 'Best field in the mountains.',
      'date': 'May 9, 2025',
      'imagePath': 'assets/images/soccer.jpg',
      'like': true,
    },
    {
      'title': 'Route 68 - Chile',
      'subtitle': 'Restorant in route to Iloca',
      'date': 'May 8, 2025',
      'imagePath': 'assets/images/badburger.jpg',
      'like': false,
    },
    {
      'title': 'Rustik Coffee Bar',
      'subtitle': 'The best coffe in the Town.',
      'date': 'May 7, 2025',
      'imagePath': 'assets/images/rustik.jpg',
      'like': true,
    },
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
              return card(items[index]["imagePath"], items[index]["title"],items[index]["subtitle"],items[index]["date"],items[index]["like"], context);
            },
          )
      );
  }
}

Widget card(String image, String title, String subtitle, String date, bool like, BuildContext context) {
  return Card(
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
              image: AssetImage(image),
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
          bottom: 16.0,
          left: 16.0,
          right: 16.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                date,
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
            like ? Icons.thumb_up : Icons.thumb_down,
            color: like ? Colors.green : Colors.red,
            size: 32.0,
          ),
        ),
      ],
    ),
  );
}



