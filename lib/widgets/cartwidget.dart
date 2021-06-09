import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CartWidget extends StatelessWidget {
  final int cartitems;

  CartWidget({@required this.cartitems});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(48.75),
      width: ScreenUtil().setWidth(48.75),
      child: Stack(
        children: [
          Container(
            height: ScreenUtil().setHeight(40.75),
            width: ScreenUtil().setWidth(45.75),
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(3.0),
                right: ScreenUtil().setWidth(3.0)),
            child: Image.asset(
              'assets/Icon feather-shopping-cart@3x.png',
              color: Theme.of(context).primaryColor,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: ScreenUtil().setHeight(15.75),
              width: ScreenUtil().setWidth(15.75),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Center(
                child: Text(
                  cartitems.toString(),
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                      letterSpacing: -0.45,
                      fontSize: ScreenUtil().setSp(10.0),
                      color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
