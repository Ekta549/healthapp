import 'package:flutter/material.dart';
import 'package:mentalhealthapp/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Sample list of items for the ListView.builder
  final List<String> items = [
    'Appointments',
    'Online Consulting',
    'Reports',
    'Select Doctors',
    'Scheduled History',
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            AppBar(
              toolbarHeight: 45,
              title: const Text('Welcome'),
              centerTitle: true,
              leading: const Icon(Icons.menu),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // ignore: avoid_print
                    print("Search pressed");
                  },
                )
              ],
            ),

            // Rest of the UI elements

            const SizedBox(
              height: 25,
            ),

            // Insert ListView.builder here
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      // Handle item tap here if needed
                    },
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
