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
  // Accede al ColorScheme y TextTheme del tema actual
  final ColorScheme colorScheme = Theme.of(context).colorScheme;
  final TextTheme textTheme = Theme.of(context).textTheme;

  return Scaffold(
    appBar: AppBar(
      title: Text(widget.content.title), // Este ya toma el style de AppBarTheme
      // TabBar ya toma los colores de TabBarTheme, si lo definiste
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
                  // <<<<< USANDO EL TEXTTHEME
                  style: textTheme.titleLarge!.copyWith(color: colorScheme.primary),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.content.subtitle,
                  // <<<<< USANDO UN ESTILO DEL TEXTTHEME
                  style: textTheme.bodyMedium!.copyWith(color: colorScheme.onSurfaceVariant),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.content.date,
                  // <<<<< USANDO UN ESTILO DEL TEXTTHEME
                  style: textTheme.bodySmall!.copyWith(color: colorScheme.onSurfaceVariant.withOpacity(0.7)),
                ),
                const SizedBox(height: 16),
                Text(
                  widget.content.description,
                  // <<<<< USANDO UN ESTILO DEL TEXTTHEME
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
        // Second Tab: Comments
        ListView.builder(
          itemCount: widget.content.comments,
          itemBuilder: (context, index) {
            return ListTile(
              // Los colores de ListTile.leading y text/subtitle se toman de ListTileThemeData
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