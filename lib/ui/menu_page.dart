import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';
import 'pegawai_page.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';
import 'pasien_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Data Pegawai"),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiPage()));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Data Pasien"),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienPage()));
            },
          ),
        ],
      ),
    );
  }
}
