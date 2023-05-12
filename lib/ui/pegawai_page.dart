import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_item.dart';
import 'pegawai_form.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({Key? key}) : super(key: key);

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    namaPegawai: "Cahyo Fitriningtyas",
                    nipPegawai: "0001",
                    tglPegawai: "22 Januari 1998",
                    nohpPegawai: "08880666XXXX",
                    emailPegawai: "cahyo@gmail.com",
                    pwPegawai: "pegawai0001"))),
          ),
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    nipPegawai: "0002",
                    namaPegawai: "Clarissa Anindita",
                    tglPegawai: "21 Februari 1999",
                    nohpPegawai: "089232121XXXX",
                    emailPegawai: "clarissa@gmail.com",
                    pwPegawai: "pegawai0002"))),
          ),
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    nipPegawai: "0003",
                    namaPegawai: "Bobby Hermawan",
                    tglPegawai: "4 Juni 1998",
                    nohpPegawai: "08883231XXXX",
                    emailPegawai: "bobby@gmail.com",
                    pwPegawai: "pegawai0003"))),
          ),
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    nipPegawai: "0004",
                    namaPegawai: "Ferdy Kurniawan",
                    tglPegawai: "2 Februari 1997",
                    nohpPegawai: "08123212XXXX",
                    emailPegawai: "ferdy@gmail.com",
                    pwPegawai: "pegawai0004"))),
          ),
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    nipPegawai: "0005",
                    namaPegawai: "Florissa Christiani",
                    tglPegawai: "22 Februari 1999",
                    nohpPegawai: "08126767XXXX",
                    emailPegawai: "florissa@gmail.com",
                    pwPegawai: "pegawai0005"))),
          ),
        ],
      ),
    );
  }
}
