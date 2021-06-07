import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natrualsqueeze/screens/landingpage.dart';
import 'package:natrualsqueeze/screens/signup.dart';
import 'package:natrualsqueeze/widgets/textbutton.dart';
import 'package:natrualsqueeze/widgets/textfield.dart';

class LoginScr extends StatefulWidget {
  @override
  _LoginScrState createState() => _LoginScrState();
}

class _LoginScrState extends State<LoginScr> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
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
                height: 35.0,
                child: Container(
                  height: ScreenUtil().screenHeight * 0.345,
                  width: ScreenUtil().screenWidth,
                  padding: EdgeInsets.only(top: 38.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFDDFFEE).withOpacity(0.8),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/confetti@3x.png',
                          ))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(children: [
                        SizedBox(
                          width: ScreenUtil().setWidth(320.0),
                        ),
                        Text('Skip',
                            style: GoogleFonts.lato(
                                fontSize: ScreenUtil().setSp(12.0),
                                color: Theme.of(context).primaryColor),
                            textAlign: TextAlign.right),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Theme.of(context).primaryColor,
                          size: ScreenUtil().setSp(12.0),
                        )
                      ]),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: ScreenUtil().setHeight(188.22),
                            width: ScreenUtil().setWidth(321.57),
                            child: Image.asset(
                              'assets/login-illustration@3x.png',
                              fit: BoxFit.fill,
                            )),
                      ),
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
                        height: ScreenUtil().setHeight(35.0),
                      ),
                      Text('Login',
                          style: GoogleFonts.lato(
                              fontSize: ScreenUtil().setSp(22.0),
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF222222)),
                          textAlign: TextAlign.right),
                      SizedBox(
                        height: ScreenUtil().setHeight(22.0),
                      ),
                      BorderedTextField(
                          hint: 'Email address',
                          error: 'Incorrect email',
                          icon: 'assets/Icon feather-mail.png',
                          borderColor: Color(0xFFA5A5A5),
                          controller: emailCtrl,
                          borderWidth: 0),
                      SizedBox(
                        height: ScreenUtil().setHeight(18.0),
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
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text('Forgot your password?',
                              style: GoogleFonts.lato(
                                  fontSize: ScreenUtil().setSp(12.0),
                                  color: Theme.of(context).primaryColor),
                              textAlign: TextAlign.right),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(33.0),
                      ),
                      Center(
                        child: TempTextButton(
                          height: 65.0,
                          width: 209.0,
                          text: 'Login',
                          textSize: 15.0,
                          onPressed: ()=> Navigator.push(
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
                              width: ScreenUtil().setWidth(121.0),
                              child: Divider(
                                color: Color(0xFFA5A5A5),
                                thickness: 0,
                                endIndent: 12.0,
                              )),
                          Text(
                            'Or login with',
                            style: GoogleFonts.lato(
                                fontSize: 12.0, color: Color(0xFFA5A5A5)),
                          ),
                          Container(
                              width: ScreenUtil().setWidth(121.0),
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
                        height: ScreenUtil().setHeight(22.0),
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScr()),
                          ),
                          child: RichText(
                            text: TextSpan(
                                text: 'Dont have an account?  ',
                                style: GoogleFonts.lato(
                                    fontSize: 14.0, color: Color(0xFFA5A5A5)),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Sign up',
                                      style: GoogleFonts.lato(
                                          color:
                                              Theme.of(context).primaryColor))
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(39.0),
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
