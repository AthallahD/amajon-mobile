import 'package:flutter/material.dart';
import 'package:amajon_mobile/widgets/left_drawer.dart';
import 'package:amajon_mobile/widgets/product_card.dart';

class MyHomePage extends StatelessWidget {
    MyHomePage({super.key});
    final String npm = '2306245024';
    final String name = 'Athallah Damar Jiwanto';
    final String className = 'PBP D';
    final List<ItemHomepage> items = [
         ItemHomepage("Lihat Daftar Produk", Icons.production_quantity_limits_rounded),
         ItemHomepage("Tambah Produk", Icons.add),
         ItemHomepage("Logout", Icons.logout),
    ];
    final List<Color> colors = [
      Colors.pinkAccent.shade100, // Warna lebih soft
      Colors.lightBlueAccent.shade100,
      Colors.lightGreenAccent.shade100,
    ];

    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // Ubah warna ikon
        title: const Text(
          'Amajon',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent.shade200, // Warna lebih soft
        elevation: 5.0, // Tambahkan bayangan
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Amajon Store!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0, // Lebih besar
                        color: Colors.black54, // Warna teks lebih modern
                      ),
                    ),
                  ),
                  GridView.count(
                      primary: true,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      children: items.asMap().entries.map((entry) {
                          int idx = entry.key;
                          ItemHomepage item = entry.value;
                          return ItemCard(item, color: colors[idx % colors.length]); 
                      }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Rounded edges
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
            ),
            const SizedBox(height: 8.0),
            Text(
              content,
              style: const TextStyle(fontSize: 16.0, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}