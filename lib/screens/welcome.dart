import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/textbutton.dart';
import 'login.dart';

class WelcomeScr extends StatefulWidget {
  @override
  _WelcomeScrState createState() => _WelcomeScrState();
}

class _WelcomeScrState extends State<WelcomeScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(37.4),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(30)),
                  height: ScreenUtil().setHeight(42.94),
                  width: ScreenUtil().setWidth(78.43),
                  child: Image.asset('assets/logo@3x.png',
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(141.7),
            ),
            Container(
              width: ScreenUtil().setWidth(284.0),
              child: RichText(
                text: TextSpan(
                    text: 'Welcome To Natural ',
                    style: GoogleFonts.lato(
                        fontSize: ScreenUtil().setSp(32.0),
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Squeeze',
                          style: GoogleFonts.lato(
                              fontSize: ScreenUtil().setSp(32.0),
                              color: Color(0xFF438E77)))
                    ]),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(29.0),
            ),
            Container(
              width: ScreenUtil().setWidth(280.0),
              child: Text(
                'The best juice bar and coffee shop around you!',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    fontSize: ScreenUtil().setSp(16.0),
                    color: Color(0xFFA5A5A5),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(45),),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.492,
                ),
                Positioned(
                  bottom: 0,
                                  child: Arc(
                    edge: Edge.TOP,
                    arcType: ArcType.CONVEX,
                    height: 35.0,
                    child: Container(
                      height: ScreenUtil().screenHeight * 0.385,
                      width: ScreenUtil().screenWidth,
                      decoration: BoxDecoration(
                          color: Color(0xFFDDFFEE).withOpacity(0.8),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/confetti@3x.png',
                              ))),
                      padding: EdgeInsets.only(top: 60.0),
                      
                    ),
                  ),
                ),
            //     SizedBox(
            //   height: ScreenUtil().setHeight(50.0),
            // ),
            Container(
                height: ScreenUtil().setHeight(260.23),
                width: ScreenUtil().setWidth(309.93),
                child: Image.asset('assets/illustration@3x.png',
                    fit: BoxFit.fill)),
            // SizedBox(
            //   height: ScreenUtil().setHeight(50.8),
            // ),
            Positioned(
              bottom: 50,
                          child: TempTextButton(
                  height: 65.0,
                  width: 239.0,
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScr()),
                      ),
                  textSize: 16.0,
                  text: 'Get Started'),
            )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
