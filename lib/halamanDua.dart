import 'package:flutter/material.dart';

class HalamanDua extends StatefulWidget {
  final String nama;
  final String noTelp;
  HalamanDua({required this.nama, required this.noTelp});

  @override
  State<HalamanDua> createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  final _formKey = GlobalKey<FormState>();
  String _makanan = '';
  String _minuman = '';
  String _dessert = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Nama : ${widget.nama}'),
              Text('No Telepon: ${widget.noTelp}'),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Nama Makanan',
                    prefixIcon: Icon(Icons.food_bank)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Nama Makanan';
                  }
                  return null;
                },
                onSaved: (value) {
                  _makanan = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Minuman', prefixIcon: Icon(Icons.local_drink)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Minuman';
                  }
                  return null;
                },
                onSaved: (value) {
                  _minuman = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Dessert', prefixIcon: Icon(Icons.cake)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Dessert';
                  }
                  return null;
                },
                onSaved: (value) {
                  _dessert = value!;
                },
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
