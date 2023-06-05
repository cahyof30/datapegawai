import 'package:flutter/material.dart';
import '../model/pasien.dart';
import '/ui/pasien_detail.dart';

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;

  const PasienUpdateForm({Key? key, required this.pasien}) : super(key: key);

  @override
  _PasienUpdateFormState createState() => _PasienUpdateFormState();
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _no_rmPasienCtrl = TextEditingController();
  final _namaPasienCtrl = TextEditingController();
  final _tglPasienCtrl = TextEditingController();
  final _nohpPasienCtrl = TextEditingController();
  final _alamatPasienCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPasienCtrl.text = widget.pasien.namaPasien;
    });
  }

  @override
  void dispose() {
    _no_rmPasienCtrl.dispose();
    _namaPasienCtrl.dispose();
    _tglPasienCtrl.dispose();
    _nohpPasienCtrl.dispose();
    _alamatPasienCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNo_rmPasien(),
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

  _fieldNo_rmPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "No. Ruang Pasien"),
      controller: _no_rmPasienCtrl,
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
        Pasien pasien = new Pasien(
          no_rmPasien: _no_rmPasienCtrl.text,
          namaPasien: _namaPasienCtrl.text,
          tglPasien: _tglPasienCtrl.text,
          nohpPasien: _nohpPasienCtrl.text,
          alamatPasien: _alamatPasienCtrl.text,
        );
        Navigator.pop(context);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => PasienDetail(pasien: pasien)));
      },
      child: const Text("Simpan Perubahan"),
    );
  }
}
