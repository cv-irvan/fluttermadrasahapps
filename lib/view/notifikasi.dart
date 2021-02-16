part of 'importView.dart';

class Notifikasi extends StatefulWidget {
  @override
  _NotifikasiState createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: whiteColor,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.keyboard_arrow_left,
            color: blackColor,
          ),
        ),
        title: Text(
          'Pemberitahuan',
          style: GoogleFonts.poppins(
            color: blackColor,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        width: Sizeconfig.screenWidth,
        height: Sizeconfig.screenHeight,
        color: whiteColor,
        child: Column(
          children: [
            ListNotif('Berhasil', 'assets/ic_done.svg', suksesColor),
            ListNotif('Info', 'assets/ic_info.svg', infoColor),
            ListNotif('Peringatan', 'assets/ic_error.svg', errorColor),
          ],
        ),
      ),
    );
  }
}
