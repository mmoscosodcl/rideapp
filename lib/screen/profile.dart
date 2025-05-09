
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("User Profile"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: "Profile"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Content for the first tab
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // User image
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/user_avatar.png'), // Replace with your image path
                  ),
                  const SizedBox(height: 16),
                  // User name
                  const Text(
                    'John Doe',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  // User email
                  const Text(
                    'johndoe@example.com',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  // User age
                  const Text(
                    'Age: 30',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  // Additional personal data
                  const Text(
                    'Location: New York, USA',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Phone: +1 123 456 7890',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  // Buttons for Edit and Delete
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle edit action
                          print('Edit button pressed');
                        },
                        child: const Text('Edit'),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          // Handle delete action
                          print('Delete button pressed');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Red color for delete
                        ),
                        child: const Text('Delete'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Content for the second tab
            ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Account Membership'),
                  subtitle: Text('Manage your account membership details'),
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip),
                  title: Text('Privacy Preferences'),
                  subtitle: Text('Adjust your privacy settings'),
                ),
                ListTile(
                  leading: Icon(Icons.format_paint),
                  title: Text('Format Preferences'),
                  subtitle: Text('Customize the format of the app'),
                ),
                ListTile(
                  leading: Icon(Icons.color_lens),
                  title: Text('Appearance Preferences'),
                  subtitle: Text('Change the look and feel of the app'),
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text('Community Preferences'),
                  subtitle: Text('Manage your community settings'),
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Social Network Preferences'),
                  subtitle: Text('Connect your social media accounts'),
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notification Preferences'),
                  subtitle: Text('Control your notification settings'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}