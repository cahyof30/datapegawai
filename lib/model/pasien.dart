class Pasien {
  int? id;
  String normPasien;
  String namaPasien;
  String tglPasien;
  String nohpPasien;
  String alamatPasien;

  Pasien(
      {this.id,
      required this.normPasien,
      required this.namaPasien,
      required this.tglPasien,
      required this.nohpPasien,
      required this.alamatPasien});

  factory Pasien.fromJson(Map<String, dynamic> json) => Pasien(
      id: json["id"],
      normPasien: json["nomor_rm"],
      namaPasien: json["nama"],
      tglPasien: json["tanggal_lahir"],
      nohpPasien: json["nomor_telepon"],
      alamatPasien: json["alamat"]);

  Map<String, dynamic> toJson() => {
        "nomor_rm": normPasien,
        "nama": namaPasien,
        "tanggal_lahir": tglPasien,
        "nomor_telepon": nohpPasien,
        "alamat": alamatPasien,
      };
}
