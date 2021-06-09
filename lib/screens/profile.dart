import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natrualsqueeze/widgets/textbutton.dart';
import 'package:natrualsqueeze/widgets/textfield.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'categories.dart';

class ProfileScr extends StatefulWidget {
  @override
  _ProfileScrState createState() => _ProfileScrState();
}

class _ProfileScrState extends State<ProfileScr> {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController dateCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  bool _switchValue1 = false;
  bool _switchValue2 = false;
  bool _switchValue3 = false;

  textSwitch(String text,bool value) {
    return StatefulBuilder(
          builder:(_,state)=> Row(
        children: [
          Text(text,
              style: GoogleFonts.lato(
                  fontSize: ScreenUtil().setSp(14.0),
                  letterSpacing: -0.8,
                  color: Color(0xFF242424)),
              textAlign: TextAlign.right),
          Spacer(),
          Container(
            height: ScreenUtil().setHeight(15.0),
            child: CupertinoSwitch(
              value: value,
              activeColor: Theme.of(context).primaryColor,
              onChanged: (val) {
                state(() {
                  value=val;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  List<String> textList = [
    'Subscribe to our newsletter',
    'Recieve our offers',
    'Activate notification'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(57.0)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: ScreenUtil().setHeight(64.0),
            ),
            Text('Your Profile',
                style: GoogleFonts.lato(
                    fontSize: ScreenUtil().setSp(22.0),
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.8,
                    color: Color(0xFF222222)),
                textAlign: TextAlign.right),
            SizedBox(
              height: ScreenUtil().setHeight(45.0),
            ),
            BorderedTextField(
                hint: 'Full Name',
                error: 'name error',
                icon: 'assets/Icon feather-user.png',
                borderColor: Color(0xFFA5A5A5),
                controller: nameCtrl,
                borderWidth: 0),
            SizedBox(
              height: ScreenUtil().setHeight(10.0),
            ),
            BorderedTextField(
                hint: 'Birth Date',
                error: 'Incorrect password',
                icon: 'assets/Icon feather-calendar.png',
                borderColor: Color(0xFFA5A5A5),
                controller: dateCtrl,
                borderWidth: 0),
            SizedBox(
              height: ScreenUtil().setHeight(10.0),
            ),
            BorderedTextField(
                hint: 'Email Address',
                error: 'Incorrect Email',
                icon: 'assets/Icon feather-mail.png',
                borderColor: Color(0xFFA5A5A5),
                controller: emailCtrl,
                borderWidth: 0),
            SizedBox(
              height: ScreenUtil().setHeight(64.0),
            ),
            Text('Preferences',
                style: GoogleFonts.lato(
                    fontSize: ScreenUtil().setSp(20.0),
                    letterSpacing: -0.8,
                    color: Color(0xFF222222)),
                textAlign: TextAlign.right),
            SizedBox(
              height: ScreenUtil().setHeight(34.0),
            ),
            textSwitch(textList[0],_switchValue1),
            SizedBox(
              height: ScreenUtil().setHeight(24.0),
            ),
            textSwitch(textList[1],_switchValue2),
            SizedBox(
              height: ScreenUtil().setHeight(24.0),
            ),
            textSwitch(textList[2],_switchValue3),
            SizedBox(
              height: ScreenUtil().setHeight(145.0),
            ),
            Center(
              child: TempTextButton(
                height: 70.0,
                width: 239.0,
                text: 'Save',
                textSize: 16.0,
                onPressed: () => pushNewScreen(context, screen: CategoriesScr()),
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
