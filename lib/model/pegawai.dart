class Pegawai {
  int? id;
  String nipPegawai;
  String namaPegawai;
  String tglPegawai;
  String nohpPegawai;
  String emailPegawai;
  String pwPegawai;

  Pegawai(
      {this.id,
      required this.nipPegawai,
      required this.namaPegawai,
      required this.tglPegawai,
      required this.nohpPegawai,
      required this.emailPegawai,
      required this.pwPegawai});

  factory Pegawai.fromJson(Map<String, dynamic> json) => Pegawai(
        id: json["id"],
        nipPegawai: json["nip"],
        namaPegawai: json["nama"],
        tglPegawai: json["tanggal_lahir"],
        nohpPegawai: json["nomor_telepon"],
        emailPegawai: json["email"],
        pwPegawai: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "nip": nipPegawai,
        "nama": namaPegawai,
        "tanggal_lahir": tglPegawai,
        "nomor_telepon": nohpPegawai,
        "email": emailPegawai,
        "password": pwPegawai,
      };
}
