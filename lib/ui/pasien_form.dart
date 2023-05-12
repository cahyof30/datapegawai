import 'package:flutter/material.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({Key? key}) : super(key: key);
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(labelText: "No. Ruang")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "Nama Pasien")),
              SizedBox(height: 20),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "Tanggal Lahir Pasien")),
              SizedBox(height: 20),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "No. Telpon Pasien")),
              SizedBox(height: 20),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "Alamat Pasien")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
            ],
          ),
        ),
      ),
    );
  }
}
