import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final biodata = <String, String>{};

  MyApp({super.key}) {
    biodata['name'] = 'Deasy Safitri';
    biodata['image'] = 'profile.jpeg';
    biodata['nim'] = '212221021';
    biodata['prodi'] = 'Informatika';
    biodata['fakultas'] = 'FMIKOM';
    biodata['angkatan'] = '2021';
    biodata['phone'] = '085850309831';
    biodata['email'] = 'deasysafitrii@gmail.com';
    biodata['addr'] =
        'jalan temugiring , dusun karag RT 05 RW 06 Desa Gentasari Kecamatan Kroya Kabupaten Cilacap';
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Biodata',
      home: Scaffold(
        appBar: AppBar(title: const Text("Aplikasi Biodata")),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black),
                child: Text(
                  biodata['name'] ?? '',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Image(image: AssetImage('assets/${biodata["image"] ?? ''}')),
              SizedBox(height: 30),
              Row(
                children: [
                  btnContact(Icons.alternate_email, Colors.green[900]),
                  btnContact(
                      Icons.mark_email_unread_rounded, Colors.blueAccent),
                  btnContact(Icons.phone, Colors.deepPurple)
                ],
              ),
              SizedBox(height: 10),
              textAttribute("Nama", biodata['name'] ?? ''),
              SizedBox(height: 5),
              textAttribute("NIM", biodata['nim'] ?? ''),
              SizedBox(height: 5),
              textAttribute("Prodi", biodata['prodi'] ?? ''),
              SizedBox(height: 5),
              textAttribute("Fakultas", biodata['fakultas'] ?? ''),
              SizedBox(height: 5),
              textAttribute("Angkatan", biodata['angkatan'] ?? ''),
              SizedBox(height: 5),
              textAttribute("Kontak", biodata['phone'] ?? ''),
              SizedBox(height: 5),
              textAttribute("Email", biodata['email'] ?? ''),
              SizedBox(height: 5),
              textAttribute("Alamat", biodata['addr'] ?? '')
            ],
          ),
        ),
      ),
    );
  }

  Row textAttribute(String judul, String teks) {
    return Row(
      children: [
        Container(
          width: 120,
          child: Text("- $judul",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Text(":", style: TextStyle(fontSize: 18)),
        Text(teks, style: TextStyle(fontSize: 18))
      ],
    );
  }

  Expanded btnContact(IconData icon, var color) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(icon),
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            textStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      ),
    );
  }
}