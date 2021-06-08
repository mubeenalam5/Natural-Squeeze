import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BorderedTextField extends StatefulWidget {
  final String hint;
  final String error;
  final String icon;
  final Color borderColor;
  final double borderWidth;
  final TextEditingController controller;

  BorderedTextField({
    @required this.hint,
    @required this.error,
    @required this.icon,
    @required this.borderColor,
    @required this.controller,
    @required this.borderWidth,
  });
  @override
  _BorderedTextFieldState createState() => _BorderedTextFieldState();
}

class _BorderedTextFieldState extends State<BorderedTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Theme.of(context).primaryColor,
      obscureText: widget.hint == 'Password' || widget.hint == 'Confirm password' ? true : false,
      controller: widget.controller,
      style: GoogleFonts.lato(               
            fontSize: ScreenUtil().setSp(15.0), color: Color(0xFF242424)),
      decoration: InputDecoration(
        prefixIcon: ImageIcon(AssetImage(widget.icon),
              color: Color(0xFFA5A5A5)),
        hintText: widget.hint,
        hintStyle: GoogleFonts.lato(               
            fontSize: ScreenUtil().setSp(12.0), color: Color(0xFFA5A5A5)),
        border: UnderlineInputBorder(
            borderSide: BorderSide(
                color: widget.borderColor,
                width: ScreenUtil().setWidth(widget.borderWidth))),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: widget.borderColor,
                width: ScreenUtil().setWidth(widget.borderWidth))),
        errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: widget.borderColor,
                width: ScreenUtil().setWidth(widget.borderWidth))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: widget.borderColor,
                width: ScreenUtil().setWidth(widget.borderWidth))),
      ),
    );
  }
}
