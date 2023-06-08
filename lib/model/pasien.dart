class Pasien {
  int? id;
  String no_rmPasien;
  String namaPasien;
  String tglPasien;
  String nohpPasien;
  String alamatPasien;

  Pasien(
      {this.id,
      required this.no_rmPasien,
      required this.namaPasien,
      required this.tglPasien,
      required this.nohpPasien,
      required this.alamatPasien});

  factory Pasien.fromJson(Map<String, dynamic> json) => Pasien(
      id: json["id"],
      no_rmPasien: json["nomor_rm"],
      namaPasien: json["nama"],
      tglPasien: json["tanggal_lahir"],
      nohpPasien: json["nomor_telepon"],
      alamatPasien: json["alamat"]);

  Map<String, dynamic> toJson() => {
        "nomor_rm": no_rmPasien,
        "nama": namaPasien,
        "tanggal_lahir": tglPasien,
        "nomor_telepon": nohpPasien,
        "alamat": alamatPasien,
      };
}
