import 'package:flutter/material.dart';
import 'package:rideapp/screen/like.dart';
import 'package:rideapp/screen/profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _snackBarMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () {
            // Close the SnackBar
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(

              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Handle item tap
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Handle item tap
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            tooltip: 'User Profile',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
        ],
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // Two cards per row
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            buildDetailCard(
              context,
              title: 'Likes',
              subtitle: 'Thinks that you like and dislike',
              amount: 42,
              imagePath: 'assets/images/likes.jpg',
              onGoTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LikesPage()),
                );
              }
            ),  
            _buildCard(
              context,
              title: 'News',
              imagePath: 'assets/images/news.jpg',
              onTap: () => _snackBarMessage(context, 'News')
            ),
            _buildCard(
              context,
              title: "What's happening",
              imagePath: 'assets/images/kpi.jpg',
              onTap: () => _snackBarMessage(context, 'KPI'),
            ),
            _buildCard(
              context,
              title: 'Friends',
              imagePath: 'assets/images/friends.jpg',
              isBlackAndWhite: true,
              onTap: () => _snackBarMessage(context, 'Friends activities'),
            ),
            _buildCard(
              context,
              title: 'Relevant Activities',
              imagePath: 'assets/images/relevants.jpg',
              onTap: () => _snackBarMessage(context, 'Relevant activities'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildCard(BuildContext context, {required String title, required String imagePath, required VoidCallback onTap, bool isBlackAndWhite = false}) {
  return GestureDetector(
    onTap: onTap,
    child: Card(
      elevation: 5.0,
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      clipBehavior: Clip.antiAlias, // Ensures the image and content respect the card's border radius
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          ColorFiltered(
            colorFilter: isBlackAndWhite
                ? const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.saturation, // Apply grayscale effect
                  )
                : const ColorFilter.mode(
                    Colors.transparent,
                    BlendMode.multiply, // No effect
                  ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, // Ensures the image covers the entire card
            ),
          ),
          // Title overlay
          Container(
            color: Colors.black.withOpacity(0.5), // Semi-transparent overlay for better text visibility
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
  }

Widget buildDetailCard(BuildContext context, {required String title, required String subtitle, required int amount, required VoidCallback onGoTap, required String imagePath}) {
  return GestureDetector(
    onTap: onGoTap,
    child: Card(
      elevation: 8.0, // Higher elevation for a more prominent look
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)), // Rounded corners
      clipBehavior: Clip.antiAlias, // Ensures the image respects the card's border radius
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            imagePath,
            fit: BoxFit.cover, // Ensures the image covers the entire card
          ),
          // Semi-transparent overlay for better text visibility
          Container(
            color: Colors.black.withOpacity(0.4), // Dark overlay
          ),
          // Card content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Title and subtitle
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // White text for contrast
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.white70, // Slightly faded white text
                      ),
                    ),
                  ],
                ),
                // Bottom row with amount and "Go" button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Amount
                    Text(
                      'Total: $amount',
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    // "Go" button
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}


}
