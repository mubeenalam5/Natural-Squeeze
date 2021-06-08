import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natrualsqueeze/widgets/textbutton.dart';
import 'package:natrualsqueeze/widgets/textfield.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CheckoutScr extends StatefulWidget {
  @override
  _CheckoutScrState createState() => _CheckoutScrState();
}

class _CheckoutScrState extends State<CheckoutScr> {
  TextEditingController carHolderNameCtrl= TextEditingController();
  TextEditingController cardNumberCtrl= TextEditingController();
  TextEditingController expiryDateCtrl= TextEditingController();
  TextEditingController cvvCtrl= TextEditingController();
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
              height: ScreenUtil().setHeight(44.0),
            ),
            GestureDetector(
                // onTap: () => Navigator.pop(context),
                child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30.0,
            )),
            SizedBox(
              height: ScreenUtil().setHeight(25.0),
            ),
            Text('Checkout',
                style: GoogleFonts.lato(
                    fontSize: ScreenUtil().setSp(25.0),
                    letterSpacing: -0.8,
                    color: Color(0xFF222222)),
                textAlign: TextAlign.right),
            SizedBox(
              height: ScreenUtil().setHeight(25.0),
            ),
            Text('How would you like to pay?',
                style: GoogleFonts.lato(
                    fontSize: ScreenUtil().setSp(20.0),
                    letterSpacing: -0.8,
                    color: Color(0xFF222222)),
                textAlign: TextAlign.right),
            SizedBox(
              height: ScreenUtil().setHeight(21.0),
            ),
            Row(
              children: [
                Container(
                  height: ScreenUtil().setHeight(54.0),
                  width: ScreenUtil().setWidth(128.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Center(
                    child: Image.asset(
                      'assets/Image 6@3x.png',
                      height: ScreenUtil().setHeight(44.0),
                      width: ScreenUtil().setWidth(78.0),
                    ),
                  ),
                ),
                SizedBox(width: ScreenUtil().setWidth(18.0)),
                TempTextButton(
                  onPressed: () {},
                  text: 'Bank Card',
                  height: 54.0,
                  width: 138.0,
                  textSize: 16.0,
                )
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(67.0),
            ),
            Text('Payment Details',
                style: GoogleFonts.lato(
                    fontSize: ScreenUtil().setSp(20.0),
                    letterSpacing: -0.8,
                    color: Color(0xFF222222)),
                textAlign: TextAlign.right),
            SizedBox(
              height: ScreenUtil().setHeight(28.0),
            ),
            BorderedTextField(
                          hint: 'CardHolder name',
                          error: 'carholder name error',
                          icon: 'assets/Icon feather-user.png',
                          borderColor: Color(0xFFA5A5A5),
                          controller: carHolderNameCtrl,
                          borderWidth: 0),
            SizedBox(
              height: ScreenUtil().setHeight(15.0),
            ),
            BorderedTextField(
                          hint: 'Card number',
                          error: 'carholder name error',
                          icon: 'assets/Icon feather-credit-card.png',
                          borderColor: Color(0xFFA5A5A5),
                          controller: cardNumberCtrl,
                          borderWidth: 0),
            SizedBox(
              height: ScreenUtil().setHeight(15.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: ScreenUtil().setWidth(172.75),
                  child: BorderedTextField(
                                hint: 'Expity date',
                                error: 'carholder name error',
                                icon: 'assets/Icon feather-calendar.png',
                                borderColor: Color(0xFFA5A5A5),
                                controller: expiryDateCtrl,
                                borderWidth: 0),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(15.0),
                ),
                Container(
                  width: ScreenUtil().setWidth(122.21),
                  child: BorderedTextField(
                                hint: 'CVV',
                                error: 'carholder name error',
                                icon: 'assets/Icon feather-lock-1.png',
                                borderColor: Color(0xFFA5A5A5),
                                controller: cvvCtrl,
                                borderWidth: 0),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(121.0),
            ),
            Center(
              child: TempTextButton(
                height: 70.0,
                width: 239.0,
                text: 'Pay \$27.39',
                textSize: 16.0,
                onPressed: () => pushNewScreen(context,
                    screen: CheckoutScr(), withNavBar: true),
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
