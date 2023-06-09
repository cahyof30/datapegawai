import 'package:flutter/material.dart';
import '../model/pasien.dart';
import '/ui/pasien_detail.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({Key? key}) : super(key: key);
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  final _normPasienCtrl = TextEditingController();
  final _namaPasienCtrl = TextEditingController();
  final _tglPasienCtrl = TextEditingController();
  final _nohpPasienCtrl = TextEditingController();
  final _alamatPasienCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNormPasien(),
              SizedBox(height: 20),
              _fieldNamaPasien(),
              SizedBox(height: 20),
              _fieldTglPasien(),
              SizedBox(height: 20),
              _fieldNohpPasien(),
              SizedBox(height: 20),
              _fieldAlamatPasien(),
              SizedBox(height: 20),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  _fieldNormPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "No. Ruang Pasien"),
      controller: _normPasienCtrl,
    );
  }

  _fieldNamaPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nama Pasien"),
      controller: _namaPasienCtrl,
    );
  }

  _fieldTglPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir Pasien"),
      controller: _tglPasienCtrl,
    );
  }

  _fieldNohpPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "No. HP Pasien"),
      controller: _nohpPasienCtrl,
    );
  }

  _fieldAlamatPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Alamat Pasien"),
      controller: _alamatPasienCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Pasien pasien = Pasien(
          normPasien: _normPasienCtrl.text,
          namaPasien: _namaPasienCtrl.text,
          tglPasien: _tglPasienCtrl.text,
          nohpPasien: _nohpPasienCtrl.text,
          alamatPasien: _alamatPasienCtrl.text,
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => PasienDetail(pasien: pasien),
          ),
        );
      },
      child: const Text("Simpan"),
    );
  }
}
