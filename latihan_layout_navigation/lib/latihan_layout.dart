import 'package:flutter/material.dart';
import 'package:latihan_layout_navigation/latihan_navigation.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage ({super.key});

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
          ListView(
            children : [
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                subtitle: const Text('This is the home page'),
                trailing: const Icon(Icons.arrow_forward),
              )

            ]
          )
          // END TODO 1
          const SizedBox(height: 20),

          
          const Text(
            'ListView.builder (Vertical)',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 300,
            // START TODO 2
            
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

                // END TODO 5
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
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