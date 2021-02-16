part of 'importProvider.dart';

class Api {
  final urlProvinsi = 'https://pengembang.gdc.co.id:8989/wilayah/provinsi';

  Future provinsi() async {
    final getProvinsi = await hit.get(
      urlProvinsi,
      headers: {"Content-Type": "application/json"},
    );

    if (getProvinsi.statusCode == 200) {
      print('sukses');
      print(getProvinsi.body);
      return ProvinsiModel.fromJson(json.decode(getProvinsi.body));
    } else {
      print('gagal ${getProvinsi.statusCode}');
    }
  }
}
