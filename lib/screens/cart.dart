import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natrualsqueeze/widgets/textbutton.dart';

class CartScr extends StatefulWidget {

  @override
  _CartScrState createState() => _CartScrState();
}

class _CartScrState extends State<CartScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(47.0)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: ScreenUtil().setHeight(64.0),
            ),
            Text('Your Cart',
                style: GoogleFonts.lato(
                    fontSize: ScreenUtil().setSp(25.0),
                    letterSpacing: -0.8,
                    color: Color(0xFF222222)),
                textAlign: TextAlign.right),
            SizedBox(
              height: ScreenUtil().setHeight(41.0),
            ),
            
            Center(
              child: TempTextButton(
                height: 70.0,
                width: 239.0,
                text: 'Checkout',
                textSize: 16.0,
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(15.0),
            ),
          ]),
        ),
      ),
    );
  }
}