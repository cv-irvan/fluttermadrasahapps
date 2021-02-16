part of 'importView.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List imgberita = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFfRDai3SvlMkOhVA9Tmyc8va0QDwE8RFRXg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5jFpvacJ2W4UkVApOSZerxvhENiCqL4ZTTw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBMxN1-f9SLmLekKW_NpvzxKZtlKG1M_PrZQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjPF8nZycvxQzuFqhK9qyoooT8kzRdr7lbpQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsZjpp9i2sGOPiP7kH4Qffcd4KnfArV6Vgcw&usqp=CAU',
  ];

  List judulberita = [
    'Sekolah Libur',
    'Kepala Sekolah Umumkan Akreditasi',
    'Juara bertahan Lomba Puisi',
    'Jurnalis Terbaik',
    'Statistik Data Virus Corona'
  ];

  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notifikasi()));
              },
              child: Icon(
                Icons.notifications,
                color: whiteColor,
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: Sizeconfig.screenWidth,
        height: Sizeconfig.screenHeight,
        color: whiteColor,
        child: Column(
          children: [
            Container(
              height: Sizeconfig.lebarLayar * 70,
              width: Sizeconfig.screenWidth,
              decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: mainColor.withOpacity(0.8),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Sizeconfig.lebarLayar * 27,
                    height: Sizeconfig.lebarLayar * 27,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: NetworkImage(
                            'http://www.vec.go.th/Portals/0/Users/162/14/49314/Jon-Profile-Picture.jpg?ver=2020-04-28-140023-690'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Joe Taslim Komar',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: whiteColor,
                        fontSize: Sizeconfig.lebarLayar * 5,
                      ),
                    ),
                  ),
                  Text(
                    '6 A - Madrasah Aliyah',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: whiteColor,
                        fontSize: Sizeconfig.lebarLayar * 4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: Sizeconfig.lebarLayar * 25,
              width: Sizeconfig.screenWidth,
              margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        errorColor,
                        redLinear,
                      ]),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rp. 1.200.000',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w500,
                        fontSize: Sizeconfig.lebarLayar * 5,
                      ),
                    ),
                  ),
                  Text(
                    'Tolal tagihan yang belum dibayar',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w300,
                        fontSize: Sizeconfig.lebarLayar * 3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Berita Terbaru',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: Sizeconfig.lebarLayar * 5,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Lihat semua',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w300,
                            fontSize: Sizeconfig.lebarLayar * 3,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: Sizeconfig.lebarLayar * 4,
                        color: primaryColor,
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 20),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int i) {
                      return Container(
                        margin: EdgeInsets.only(right: 0, left: 20),
                        width: Sizeconfig.lebarLayar * 40,
                        decoration: BoxDecoration(
                          color: greyColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage('${imgberita[i]}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Expanded(
                            child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              // color: blackColor.withOpacity(0.5),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    blackColor.withOpacity(0.0),
                                    blackColor.withOpacity(0.0),
                                    blackColor.withOpacity(0.7),
                                    blackColor.withOpacity(0.9)
                                  ]),
                              borderRadius: BorderRadius.circular(10)),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '${judulberita[i]}',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: Sizeconfig.lebarLayar * 4,
                                ),
                              ),
                            ),
                          ),
                        )),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
