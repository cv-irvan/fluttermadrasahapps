part of 'importView.dart';

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  // List<dynamic> dataProvinsi = List();
  String valProvinsi;

  List<dynamic> dataProvinsi = [];

  List<dynamic> noProvinsi = [];

  @override
  void initState() {
    hitProvinsi();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dropdown'),
      ),
      body: Container(
        child: Column(
          children: [
            DropdownButton(
              hint: Text('Pilih Provinsi'),
              value: valProvinsi,
              items: dataProvinsi.map((x) {
                return DropdownMenuItem(
                  child: Text(x),
                  value: x,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  valProvinsi = value;
                  print(value);
                });
              },
            )
          ],
        ),
      ),
    );
  }

  void hitProvinsi() {
    WilayahBloc blocwilayah = WilayahBloc();
    blocwilayah.getProvinsi();
    blocwilayah.provinsi.listen((value) {
      for (int i; i > 0; i++) {
        setState(() {
          dataProvinsi.add(value.data[i].nama);
          noProvinsi.add(value.data[i].kode);
        });
      }
    });
  }
}
