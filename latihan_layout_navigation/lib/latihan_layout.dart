import 'latihan_navigation.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Layout'),
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
          // START TODO 1
          const ListTile(title: Text('tap 1')),
          const ListTile(title: Text('tap 2')),
          const ListTile(title: Text('tap 3')),

          // END TODO 1
          const SizedBox(height: 20),

          const Text(
            'ListView.builder (Vertical)',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 300,
            // START TODO 2
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(title: Text('Item $index'));
              },
            ),

            // END TODO 2
          ),
          const SizedBox(height: 20),

          const Text(
            'Horizontal ListView',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 100,
            // START TODO 3
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  color: Colors.blue,
                  child: Center(child: Text('Item $index')),
                );
              },
            ),

            // END TODO 3
          ),
          const SizedBox(height: 20),

          const Text(
            'GridView',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 300,
            // START TODO 4
            child: GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: List.generate(6, (index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  color: Colors.teal,
                  child: Center(child: Text('Item $index')),
                );
              }),
            ),

            // END TODO 4
          ),

          const SizedBox(height: 20),
          const Text(
            'Navigation',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // START TODO 5 : navigation.push
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationPage(),
                  ),
                );

                // END TODO 5
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              child: const Text(
                'Pergi ke NavigationPage',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
