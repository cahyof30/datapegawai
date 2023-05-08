import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({Key? key}) : super(key: key);

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pasien")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("01. Muhammad Fajar K."),
              ),
            ),
            onTap: () {
              Pasien no_rmPasien,
                  namaPasien,
                  tglPasien,
                  nohpPasien,
                  alamatPasien = new Pasien(
                      no_rmPasien: "121",
                      namaPasien: "Muhammad Fajar Kurnia",
                      tglPasien: "12 Mei 1999",
                      nohpPasien: "08882312XXXX",
                      alamatPasien: "Klitren, Gondokusuman, Yogyakarta");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PasienDetail(pasien: alamatPasien)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("02. Indah Setiani Dewi"),
              ),
            ),
            onTap: () {
              Pasien no_rmPasien,
                  namaPasien,
                  tglPasien,
                  nohpPasien,
                  alamatPasien = new Pasien(
                      no_rmPasien: "122",
                      namaPasien: "Indah Setiani Dewi",
                      tglPasien: "12 September 2001",
                      nohpPasien: "08881212XXXX",
                      alamatPasien: "Balirejo, Yogyakarta");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PasienDetail(pasien: alamatPasien)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("03. Agus Setiabudi"),
              ),
            ),
            onTap: () {
              Pasien no_rmPasien,
                  namaPasien,
                  tglPasien,
                  nohpPasien,
                  alamatPasien = new Pasien(
                      no_rmPasien: "123",
                      namaPasien: "Agus Setiabudi",
                      tglPasien: "3 Agustus 1987",
                      nohpPasien: "08123157XXXX",
                      alamatPasien: "Kasihan, Bantul");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PasienDetail(pasien: alamatPasien)));
            },
          ),
        ],
      ),
    );
  }
}
