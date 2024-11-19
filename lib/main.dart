import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Asset App',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(), // Lato font for the entire app
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Asset and Network Images'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // Horizontal ListView for local images (assets)
            SizedBox(
              height: 200, // Height for image display
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset('assets/images/Cats 1.jpg'),
                  const SizedBox(width: 10),
                  Image.asset('assets/images/Cats 2.jpg'),
                  const SizedBox(width: 10),
                  Image.asset('assets/images/Cats 3.jpg'),
                ],
              ),
            ),
            const SizedBox(height: 20), // Space between widgets
            // ListTile Widgets with Lato font
            Container(
              color: Colors.blueGrey, // Background color for consistency
              child: ListTile(
                title: Text(
                  'ListTile 1',
                  style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
                ),
                leading: const Icon(Icons.star, color: Colors.white),
              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: ListTile(
                title: Text(
                  'ListTile 2',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                trailing: const CircleAvatar(
                  child: Text('A', style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.orange,
                ),
              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: ListTile(
                title: Text(
                  'ListTile 3',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
                leading: const Icon(Icons.favorite, color: Colors.white),
              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: const ListTile(
                title: Text(
                  'ListTile 4',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                trailing: Icon(Icons.check, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20), // Space between widgets
            // Horizontal ListView for remote images (fetched from the internet)
            SizedBox(
              height: 200, // Height for image display
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network('https://www.gstatic.com/webp/gallery/1.jpg'),
                  const SizedBox(width: 10),
                  Image.network('https://www.gstatic.com/webp/gallery/1.jpg'),
                  const SizedBox(width: 10),
                  Image.network('https://www.gstatic.com/webp/gallery/1.jpg'),
                ],
              ),
            ),
            const SizedBox(height: 20), // Space between widgets
          ],
        ),
      ),
    );
  }
}
