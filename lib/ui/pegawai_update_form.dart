import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import '/ui/pegawai_detail.dart';

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiUpdateForm({Key? key, required this.pegawai}) : super(key: key);

  @override
  _PegawaiUpdateFormState createState() => _PegawaiUpdateFormState();
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPegawaiCtrl = TextEditingController();
  final _nipPegawaiCtrl = TextEditingController();
  final _tglPegawaiCtrl = TextEditingController();
  final _nohpPegawaiCtrl = TextEditingController();
  final _emailPegawaiCtrl = TextEditingController();
  final _pwPegawaiCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPegawaiCtrl.text = widget.pegawai.namaPegawai;
    });
  }

  @override
  void dispose() {
    _namaPegawaiCtrl.dispose();
    _nipPegawaiCtrl.dispose();
    _tglPegawaiCtrl.dispose();
    _nohpPegawaiCtrl.dispose();
    _emailPegawaiCtrl.dispose();
    _pwPegawaiCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPegawai(),
              SizedBox(height: 20),
              _fieldNipPegawai(),
              SizedBox(height: 20),
              _fieldTglPegawai(),
              SizedBox(height: 20),
              _fieldNohpPegawai(),
              SizedBox(height: 20),
              _fieldEmailPegawai(),
              SizedBox(height: 20),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      controller: _namaPegawaiCtrl,
    );
  }

  _fieldNipPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nomor Induk Pegawai"),
      controller: _nipPegawaiCtrl,
    );
  }

  _fieldTglPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir Pegawai"),
      controller: _tglPegawaiCtrl,
    );
  }

  _fieldNohpPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "No. HP Pegawai"),
      controller: _nohpPegawaiCtrl,
    );
  }

  _fieldEmailPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Email Pegawai"),
      controller: _emailPegawaiCtrl,
    );
  }

  _fieldPwPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Password Pegawai"),
      controller: _pwPegawaiCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Pegawai pegawai = new Pegawai(
          namaPegawai: _namaPegawaiCtrl.text,
          nipPegawai: _nipPegawaiCtrl.text,
          tglPegawai: _tglPegawaiCtrl.text,
          nohpPegawai: _nohpPegawaiCtrl.text,
          emailPegawai: _emailPegawaiCtrl.text,
          pwPegawai: _pwPegawaiCtrl.text,
        );
        Navigator.pop(context);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => PegawaiDetail(pegawai: pegawai)));
      },
      child: const Text("Simpan Perubahan"),
    );
  }
}
