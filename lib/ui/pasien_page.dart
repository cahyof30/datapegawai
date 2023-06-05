import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_item.dart';
import 'pasien_form.dart';
import '../widget/sidebar.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({Key? key}) : super(key: key);

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: (PasienItem(
                pasien: Pasien(
                    no_rmPasien: "121",
                    namaPasien: "Muhammad Fajar Kurnia",
                    tglPasien: "12 Mei 1999",
                    nohpPasien: "08882312XXXX",
                    alamatPasien: "Klitren, Gondokusuman, Yogyakarta"))),
          ),
          GestureDetector(
            child: (PasienItem(
                pasien: Pasien(
                    no_rmPasien: "122",
                    namaPasien: "Indah Setiani Dewi",
                    tglPasien: "12 September 2001",
                    nohpPasien: "08881212XXXX",
                    alamatPasien: "Balirejo, Yogyakarta"))),
          ),
          GestureDetector(
            child: (PasienItem(
                pasien: Pasien(
                    no_rmPasien: "123",
                    namaPasien: "Agus Setiabudi",
                    tglPasien: "3 Agustus 1987",
                    nohpPasien: "08123157XXXX",
                    alamatPasien: "Kasihan, Bantul"))),
          ),
        ],
      ),
    );
  }
}
