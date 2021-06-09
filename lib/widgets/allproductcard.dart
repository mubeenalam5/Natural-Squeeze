import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/product.dart';

class AllProductCard extends StatefulWidget {
  final Product product;

  AllProductCard({@required this.product});
  @override
  _AllProductCardState createState() => _AllProductCardState();
}

class _AllProductCardState extends State<AllProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(87.0),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(8.0), vertical: ScreenUtil().setHeight(8.0)),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade50,
                spreadRadius: 6.0,
                blurRadius: 6.0)
          ],
          borderRadius: BorderRadius.circular(15.0)),
      child: Center(
        child: ListTile(
          leading: Container(
            height: ScreenUtil().setHeight(66.0),
            width: ScreenUtil().setWidth(75.0),
            decoration: BoxDecoration(
              color: Color(0xFFF7FFFB),
              borderRadius: BorderRadius.circular(15.0)
            ),
                      child: Center(
                        child: Image.asset(
              widget.product.image,
              height: ScreenUtil().setHeight(52.0),
              width: ScreenUtil().setWidth(41.0),
              fit: BoxFit.fill,
            ),
                      ),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded, color: Theme.of(context).primaryColor,size: ScreenUtil().setSp(16.0),),
          title: Text(
            widget.product.title,
            style: GoogleFonts.lato(
                fontSize: ScreenUtil().setSp(16.0), color: Color(0xFF222222)),
          ),
        ),
      ),
    );
  }
}
