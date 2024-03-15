import 'package:flutter/material.dart';
import 'package:ucp_paml/halamanDua.dart';

class HalamanSatu extends StatefulWidget {
  @override
  _HalamanSatuState createState() => _HalamanSatuState();
}

class _HalamanSatuState extends State<HalamanSatu> {
  final _formKey = GlobalKey<FormState>();
  String _nama = '';
  String _alamat = '';
  String _noTelp = '';
  String _sex = '';
  bool _isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Form'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i1.wp.com/www.bantennews.co.id/wp-content/uploads/2018/10/Prabowo-Subianto-2.jpg?fit=720%2C526&ssl=1"),
            radius: 80,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                onChanged: () {
                  setState(() {
                    _isButtonEnabled = _formKey.currentState!.validate();
                  });
                },
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Nama', prefixIcon: Icon(Icons.email)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukkan Nama';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _nama = value!;
                        },
                        onChanged: (value) {
                          setState(() {
                            _isButtonEnabled =
                                _formKey.currentState!.validate();
                          });
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'No Telepon',
                          prefixIcon: Icon(Icons.phone),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukkan No telepon';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _noTelp = value!;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Alamat', prefixIcon: Icon(Icons.house)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukkan Alamat';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _alamat = value!;
                        },
                      ),
                      SizedBox(height: 16),
                      Text('Gender', style: TextStyle(fontSize: 16)),
                      Row(
                        children: <Widget>[
                          Radio(
                            value: 'Laki-laki',
                            groupValue: _sex,
                            onChanged: (value) {
                              setState(() {
                                _sex = value.toString();
                              });
                            },
                          ),
                          Text('Laki-Laki'),
                          Radio(
                            value: 'Perempuan',
                            groupValue: _sex,
                            onChanged: (value) {
                              setState(() {
                                _sex = value.toString();
                              });
                            },
                          ),
                          Text('Perempuan'),
                        ],
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: ElevatedButton(
                          onPressed: _isButtonEnabled
                              ? () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HalamanDua(
                                          nama: _nama,
                                          noTelp: _noTelp,
                                        ),
                                      ),
                                    );
                                  }
                                }
                              : null,
                          child: Text('Next'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
