import 'package:flutter/material.dart';
import '/ui/menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Pegawai & Pasien',
      debugShowCheckedModeBanner: false,
      home: MenuPage(),
    );
  }
}
