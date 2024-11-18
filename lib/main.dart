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
        textTheme: GoogleFonts.latoTextTheme(),
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
        title: const Text('Flutter Asset App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // Horizontal ListView for remote images
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network('https://via.placeholder.com/800x600'),
                  const SizedBox(width: 10),
                  Image.network('https://via.placeholder.com/800x600'),
                  const SizedBox(width: 10),
                  Image.network('https://via.placeholder.com/800x600'),
                ],
              ),
            ),
            const SizedBox(height: 20), // Space between widgets
            // ListTile Widgets
            ListTile(
              title: Text(
                'ListTile 1',
                style: GoogleFonts.lato(fontSize: 18),
              ),
              leading: const Icon(Icons.star),
            ),
            ListTile(
              title: Text(
                'ListTile 2',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const CircleAvatar(
                child: Text('A'),
              ),
            ),
            ListTile(
              title: Text(
                'ListTile 3',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              leading: const Icon(Icons.favorite),
            ),
            const ListTile(
              title: Text(
                'ListTile 4',
                style: TextStyle(fontSize: 18), // Default font on device
              ),
              trailing: Icon(Icons.check),
            ),
            const SizedBox(height: 20), // Space between widgets
            // Horizontal ListView for local images
            SizedBox(
              height: 150,
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
          ],
        ),
      ),
    );
  }
}

