part of 'importUtils.dart';

// ignore: must_be_immutable
class ListNotif extends StatefulWidget {
  final String svg;
  final String keterangan;
  final Color warna;
  ListNotif(this.keterangan, this.svg, this.warna);

  @override
  _ListNotifState createState() => _ListNotifState();
}

class _ListNotifState extends State<ListNotif> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      height: Sizeconfig.lebarLayar * 16,
      width: Sizeconfig.screenWidth - 40,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: blackColor.withOpacity(0.25),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: Sizeconfig.lebarLayar * 16,
            width: Sizeconfig.lebarLayar * 2,
            decoration: BoxDecoration(
                color: widget.warna,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                )),
          ),
          Padding(
              padding: EdgeInsets.all(15),
              child: Image(
                  image: Svg(
                '${widget.svg}',
                color: widget.warna,
              ))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.keterangan}',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: blackColor,
                    fontSize: Sizeconfig.lebarLayar * 5,
                  ),
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet.',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: blackColor,
                    fontSize: Sizeconfig.lebarLayar * 4,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
