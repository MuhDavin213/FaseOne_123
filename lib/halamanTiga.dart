import 'package:flutter/material.dart';

class HalamanTiga extends StatelessWidget {
  final String nama;
  final String noTelp;
  final String makanan;
  final String minuman;
  final String dessert;
  const HalamanTiga({
    required this.nama,
    required this.noTelp,
    required this.makanan,
    required this.minuman,
    required this.dessert,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama: $nama',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'No Telepon: $noTelp',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Makanan: $makanan',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Minuman: $minuman',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Dessert: $dessert',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali ke Halaman Pertama'),
            ),
          ],
        ),
      ),
    );
  }
}
