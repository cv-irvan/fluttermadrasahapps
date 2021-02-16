part of 'importModel.dart';

class ProvinsiModel {
  String rc;
  String rcDesc;
  List<Data> data;

  ProvinsiModel({this.rc, this.rcDesc, this.data});

  ProvinsiModel.fromJson(Map<String, dynamic> json) {
    rc = json['rc'];
    rcDesc = json['rc_desc'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rc'] = this.rc;
    data['rc_desc'] = this.rcDesc;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String kode;
  String nama;

  Data({this.kode, this.nama});

  Data.fromJson(Map<String, dynamic> json) {
    kode = json['kode'];
    nama = json['nama'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode'] = this.kode;
    data['nama'] = this.nama;
    return data;
  }
}
