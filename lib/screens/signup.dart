import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natrualsqueeze/screens/landingpage.dart';
import 'package:natrualsqueeze/screens/login.dart';
import 'package:natrualsqueeze/widgets/textbutton.dart';
import 'package:natrualsqueeze/widgets/textfield.dart';

class SignupScr extends StatefulWidget {
  @override
  _SignupScrState createState() => _SignupScrState();
}

class _SignupScrState extends State<SignupScr> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController confpasswordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Arc(
                edge: Edge.BOTTOM,
                arcType: ArcType.CONVEX,
                height: ScreenUtil().setHeight(35.0),
                child: Container(
                  height: ScreenUtil().screenHeight * 0.325,
                  width: ScreenUtil().screenWidth,
                  padding: EdgeInsets.only(top: 57.0, bottom: 30.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFDDFFEE).withOpacity(0.8),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/confetti@3x.png',
                          ))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(87.0),
                      ),
                      Container(
                          height: ScreenUtil().setHeight(214.22),
                          width: ScreenUtil().setWidth(213.57),
                          child: Image.asset(
                            'assets/signup-illustration@3x.png',
                            fit: BoxFit.fill,
                          )),
                      SizedBox(
                        width: ScreenUtil().setWidth(20.0),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                            Text('Skip',
                                style: GoogleFonts.lato(
                                    fontSize: ScreenUtil().setSp(12.0),
                                    color: Theme.of(context).primaryColor),
                                textAlign: TextAlign.right),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Theme.of(context).primaryColor,
                              size: ScreenUtil().setSp(12.0),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: ScreenUtil().screenWidth,
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(47.0)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: ScreenUtil().setHeight(36.0),
                      ),
                      Text('Sign Up',
                          style: GoogleFonts.lato(
                              fontSize: ScreenUtil().setSp(22.0),
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF222222)),
                          textAlign: TextAlign.right),
                      SizedBox(
                        height: ScreenUtil().setHeight(13.0),
                      ),
                      BorderedTextField(
                          hint: 'Email address',
                          error: 'Incorrect email',
                          icon: 'assets/Icon feather-mail.png',
                          borderColor: Color(0xFFA5A5A5),
                          controller: emailCtrl,
                          borderWidth: 0),
                      SizedBox(
                        height: ScreenUtil().setHeight(10.0),
                      ),
                      BorderedTextField(
                          hint: 'Password',
                          error: 'Incorrect password',
                          icon: 'assets/Icon feather-lock-1.png',
                          borderColor: Color(0xFFA5A5A5),
                          controller: passwordCtrl,
                          borderWidth: 0),
                      SizedBox(
                        height: ScreenUtil().setHeight(10.0),
                      ),
                      BorderedTextField(
                          hint: 'Confirm Password',
                          error: 'Password not matched',
                          icon: 'assets/Icon feather-lock-1.png',
                          borderColor: Color(0xFFA5A5A5),
                          controller: confpasswordCtrl,
                          borderWidth: 0),
                      SizedBox(
                        height: ScreenUtil().setHeight(33.0),
                      ),
                      Center(
                        child: TempTextButton(
                          height: 65.0,
                          width: 209.0,
                          text: 'Sign Up',
                          textSize: 15.0,
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainScr()),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(33.0),
                      ),
                      Row(
                        children: [
                          Container(
                              width: ScreenUtil().setWidth(114.0),
                              child: Divider(
                                color: Color(0xFFA5A5A5),
                                thickness: 0,
                                endIndent: 12.0,
                              )),
                          Text(
                            'Or Sign up with',
                            style: GoogleFonts.lato(
                                fontSize: ScreenUtil().setSp(12.0), color: Color(0xFFA5A5A5)),
                          ),
                          Container(
                              width: ScreenUtil().setWidth(114.0),
                              child: Divider(
                                color: Color(0xFFA5A5A5),
                                thickness: 0,
                                indent: 12.0,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10.0),
                      ),
                      Center(
                        child: Container(
                          height: ScreenUtil().setHeight(52.0),
                          width: ScreenUtil().setWidth(102.0),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0))),
                            child: Image.asset('assets/Image 3@3x.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(32.0),
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScr()),
                          ),
                          child: RichText(
                            text: TextSpan(
                                text: 'Already have an account?  ',
                                style: GoogleFonts.lato(
                                    fontSize: 14.0, color: Color(0xFFA5A5A5)),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Login',
                                      style: GoogleFonts.lato(
                                          color:
                                              Theme.of(context).primaryColor))
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20.0),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
