import 'dart:convert';

class Vendor {
  int vendor_id;
  String vendor_instansi;
  String vendor_pimpinan;
  String vendor_telepon;
  String vendor_email;
  String vendor_bidang;
  String vendor_npwp;
  String vendor_website;
  String vendor_alamat;
  String vendor_tentang;

  Vendor({
    this.vendor_id = 0,
    this.vendor_instansi,
    this.vendor_pimpinan,
    this.vendor_telepon,
    this.vendor_email,
    this.vendor_bidang,
    this.vendor_npwp,
    this.vendor_website,
    this.vendor_alamat,
    this.vendor_tentang,
  });

  /*keyword factory yang berfungsi agar 
    tidak membuat objek baru ketika kita panggil 
    Named Constructor tersebut.
  */

  factory Vendor.fromJson(Map<String, dynamic> map) {
    return Vendor(
      vendor_id: map["vendor_id"],
      vendor_instansi: map["vendor_instansi"],
      vendor_pimpinan: map["vendor_pimpinan"],
      vendor_telepon: map["vendor_telepon"],
      vendor_email: map["vendor_email"],
      vendor_bidang: map["vendor_bidang"],
      vendor_npwp: map["vendor_npwp"],
      vendor_website: map["vendor_website"],
      vendor_alamat: map["vendor_alamat"],
      vendor_tentang: map["vendor_tentang"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "vendor_id": vendor_id,
      "vendor_instansi": vendor_instansi,
      "vendor_pimpinan": vendor_pimpinan,
      "vendor_telepon": vendor_telepon,
      "vendor_email": vendor_email,
      "vendor_bidang": vendor_bidang,
      "vendor_npwp": vendor_npwp,
      "vendor_website": vendor_website,
      "vendor_alamat": vendor_alamat,
      "vendor_tentang": vendor_tentang,
      "vendor_npwp": vendor_npwp
    };
  }

  @override
  String toString() {
    return 'Vendor{vendor_id: $vendor_id, vendor_instansi: $vendor_instansi,vendor_pimpinan: $vendor_pimpinan,vendor_telepon: $vendor_telepon,vendor_email: $vendor_email, vendor_bidang: $vendor_bidang, vendor_npwp: $vendor_npwp, vendor_website: $vendor_website, vendor_alamat: $vendor_alamat, vendor_tentang: $vendor_tentang}';
  }
}

/* fungsi untuk melakukan konversi respon dari API ke
class model */
List<Vendor> vendorFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Vendor>.from(data.map((item) => Vendor.fromJson(item)));
}

/* fungsi untuk melakukan konversi dari
class model ke JSON Format dalam bentuk String*/

String vendorToJson(Vendor data) {
  final jsonData = data.toJson();
  return jsonEncode(jsonData);
}
