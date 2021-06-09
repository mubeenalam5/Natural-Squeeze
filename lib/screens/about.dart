import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScr extends StatefulWidget {

  @override
  _AboutScrState createState() => _AboutScrState();
}

class _AboutScrState extends State<AboutScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arc(
                  edge: Edge.BOTTOM,
                  arcType: ArcType.CONVEX,
                  height: 35.0,
                  child: Container(
                    height: ScreenUtil().screenHeight * 0.25,
                    width: ScreenUtil().screenWidth,
                    padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(57.0),
                        bottom: ScreenUtil().setHeight(30.0),
                        left: ScreenUtil().setWidth(47.0),
                        right: ScreenUtil().setWidth(35.0)),
                    decoration: BoxDecoration(
                        color: Color(0xFFDDFFEE).withOpacity(0.8),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/confetti@3x.png',
                            ))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                  size: 30.0,
                                )),
                        SizedBox(
                          height: ScreenUtil().setHeight(35.0),
                        ),
                        Text(
                          'About NaturalSqueeze',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.lato(
                              letterSpacing: -0.45,
                              fontWeight: FontWeight.w600,
                              fontSize: 21,
                              color: Color(0xFF222222)),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: ScreenUtil().setHeight(25.0),
              ),
              Padding(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(47)),
                child: Text(
                  'Our Vision',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                      letterSpacing: -0.45,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF222222)),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(18.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(47)),
                child: Text(
                  'We’re not just passionate purveyors of coffee, but everything else that goes with a full and rewarding coffeehouse experience. We also offer a selection of premium teas, fine pastries and other delectable treats to please the taste buds. And the music you hear in store is chosen for its artistry and appeal.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                      letterSpacing: -0.45,
                      height: 1.4,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA5A5A5)),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(45.0),
              ),
              Padding(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(47)),
                child: Text(
                  'Find Us',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                      letterSpacing: -0.45,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF222222)),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(18.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(47)),
                child: Text(
                  '8th, Tower Road\nNew York City',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                      letterSpacing: -0.45,
                      height: 1.4,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA5A5A5)),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(25.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(47)),
                child: Container(
                  padding: EdgeInsets.only(
                    top:ScreenUtil().setHeight(85.0),
                    right: ScreenUtil().setWidth(117.0),
                    left: ScreenUtil().setWidth(175.0),
                    bottom: ScreenUtil().setHeight(111.0)
                  ),
                  height: ScreenUtil().setHeight(222.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: AssetImage('assets/map@3x.png')
                    )
                  ),
                  child: Image.asset('assets/Icon feather-map-pin@3x.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}