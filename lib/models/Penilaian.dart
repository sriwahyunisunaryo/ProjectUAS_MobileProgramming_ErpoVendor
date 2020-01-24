import 'dart:convert';

class Penilaian {
  int idPenilaian;
  int projectId;
  String title;
  int idVendor;
  String vendorInstansi;
  String vendorWebsite;
  int kinerja;
  int ketepatan;
  int komunikasi;

  Penilaian({
    this.idPenilaian,
    this.projectId,
    this.title,
    this.idVendor,
    this.vendorInstansi,
    this.vendorWebsite,
    this.kinerja,
    this.ketepatan,
    this.komunikasi,
  });

  factory Penilaian.fromJson(Map<String, dynamic> json) => Penilaian(
        idPenilaian: json["id_penilaian"],
        projectId: json["project_id"],
        title: json["title"],
        idVendor: json["id_vendor"],
        vendorInstansi: json["vendor_instansi"],
        vendorWebsite: json["vendor_website"],
        kinerja: json["kinerja"],
        ketepatan: json["ketepatan"],
        komunikasi: json["komunikasi"],
      );

  Map<String, dynamic> toJson() => {
        "id_penilaian": idPenilaian,
        "project_id": projectId,
        "title": title,
        "id_vendor": idVendor,
        "vendor_instansi": vendorInstansi,
        "vendor_website": vendorWebsite,
        "kinerja": kinerja,
        "ketepatan": ketepatan,
        "komunikasi": komunikasi,
      };

  @override
  String toString() {
    return 'Penilaian{id_penilaian: $idPenilaian, project_id: $projectId, title: $title, id_vendor: $idVendor, vendor_instansi: $vendorInstansi, vendor_website: $vendorWebsite, kinerja: $kinerja, ketepatan: $ketepatan, komunikasi: $komunikasi}';
  }
}

/* fungsi untuk melakukan konversi respon dari API ke
class model */
List<Penilaian> penilaianFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Penilaian>.from(
      data.map((item) => Penilaian.fromJson(item)).toList());
}

/* fungsi untuk melakukan konversi dari
class model ke JSON Format dalam bentuk String*/

String penilaianToJson(Penilaian data) {
  final jsonData = data.toJson();
  return jsonEncode(jsonData);
}
