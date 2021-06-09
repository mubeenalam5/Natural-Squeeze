import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TempTextButton extends StatefulWidget {
  final String text;
  final double textSize;
  final VoidCallback onPressed;
  final double height;
  final double width;

  TempTextButton(
      {@required this.text,
      @required this.textSize,
      @required this.onPressed,
      @required this.height,
      @required this.width});
  @override
  _TempTextButtonState createState() => _TempTextButtonState();
}

class _TempTextButtonState extends State<TempTextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(widget.width),
      height: ScreenUtil().setHeight(widget.height),
      child: TextButton(
          onPressed: widget.onPressed,
          style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0,
            primary: Colors.white,
            shape: StadiumBorder(),
          ),
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil().setSp(widget.textSize)),
          )),
    );
  }
}
