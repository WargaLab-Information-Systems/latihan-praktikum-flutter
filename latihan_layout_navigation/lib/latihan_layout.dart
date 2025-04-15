import 'package:flutter/material.dart';
import 'package:latihan_layout_navigation/latihan_navigation.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Layout Heriyanto'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          const Text(
            'Static ListView',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          // START SOAL 1
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Item 1'),
            subtitle: Text('Deskripsi item 1'),
          ),
          const ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 2'),
            subtitle: Text('Deskripsi item 2'),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Item 3'),
            subtitle: Text('Deskripsi item 3'),
          ),
          // BATAS SOAL 1
          const SizedBox(height: 20),

          const Text(
            'ListView.builder (Vertical)',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 300,
            // START SOAL 2
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.label),
                  title: Text('Item $index'),
                  subtitle: Text('This is a list item'),
                );
              },
            ),
            // BATAS SOAL 2
          ),
          const SizedBox(height: 20),

          const Text(
            'Horizontal ListView',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 100,
            // START SOAL 3
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                5,
                (index) => Container(
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  color: Colors.blue[100 * ((index % 8) + 1)],
                  child: Center(child: Text('Item $index')),
                ),
              ),
            ),
            // BATAS SOAL 3
          ),
          const SizedBox(height: 20),

          const Text(
            'GridView',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 300,
            // START SOAL 4
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: List.generate(
                6,
                (index) => Container(
                  color: Colors.green[100 * ((index % 8) + 1)],
                  child: Center(child: Text('Item $index')),
                ),
              ),
            ),
            // BATAS SOAL 4
          ),

          const SizedBox(height: 20),
          const Text(
            'Navigation',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // START SOAL 5 Navigation
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationPage(),
                  ),
                );
                // INI SELESAINYA
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              child: const Text(
                'ke NavigationPage YUKK',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
