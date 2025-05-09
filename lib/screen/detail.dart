import 'package:flutter/material.dart';
import 'package:rideapp/entity/content.dart';

class DetailPage extends StatefulWidget {
  final Content content;

  const DetailPage({super.key, required this.content});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Two tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.content.title),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.info), text: "Information"),
            Tab(icon: Icon(Icons.comment), text: "Comments"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // First Tab: Information
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    widget.content.imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    widget.content.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.content.subtitle,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.content.date,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    widget.content.description,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Second Tab: Comments
          ListView.builder(
            itemCount: widget.content.comments, // Assuming `comments` is the count
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.person),
                title: Text('Comment #${index + 1}'),
                subtitle: const Text('This is a sample comment.'),
              );
            },
          ),
        ],
      ),
    );
  }
}