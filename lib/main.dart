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
        title: const Text('Images and Assets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 200, 
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
            const SizedBox(height: 20), 
            Container(
              color: Colors.blueGrey, 
              child: ListTile(
                title: Text(
                  'Lato Font 1',
                  style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
                ),
                leading: const Icon(Icons.star, color: Colors.white),
              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: ListTile(
                title: Text(
                  'Lato Font 2',
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
                  'Lato Font 3',
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
                  'Lato Font 4',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                trailing: Icon(Icons.check, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20), 
            SizedBox(
              height: 200, 
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network('https://cdn.pixabay.com/photo/2020/10/05/10/51/cat-5628953_1280.jpg'),
                  const SizedBox(width: 10),
                  Image.network('https://cdn.pixabay.com/photo/2019/05/21/07/11/cat-4218424_1280.jpg'),
                  const SizedBox(width: 10),
                  Image.network('https://cdn.pixabay.com/photo/2015/06/07/19/42/animal-800760_1280.jpg'),
                ],
              ),
            ),
            const SizedBox(height: 20), 
          ],
        ),
      ),
    );
  }
}
