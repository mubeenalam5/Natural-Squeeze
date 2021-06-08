import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/product.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  final double cardWidth;

  ProductCard({@required this.product,@required this.cardWidth});
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(195.0),
      width: ScreenUtil().setWidth(widget.cardWidth),
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade100.withOpacity(0.6),
                spreadRadius: 6.0,
                blurRadius: 6.0)
          ],
          borderRadius: BorderRadius.circular(35.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            widget.product.image,
            height: ScreenUtil().setHeight(90.0),
            width: ScreenUtil().setWidth(93.0),
          ),
          Text(
            widget.product.title,
            textAlign: TextAlign.left,
            style: GoogleFonts.lato(
                letterSpacing: -0.25,
                fontSize: ScreenUtil().setSp(16.0),
                color: Color(0xFF222222)),
          ),
          SizedBox(height: ScreenUtil().setHeight(2.0)),
          Text(
            widget.product.description,
            textAlign: TextAlign.left,
            style: GoogleFonts.lato(
                letterSpacing: -0.25,
                fontSize: ScreenUtil().setSp(11.0),
                color: Color(0xFFA5A5A5)),
          ),
          SizedBox(height: ScreenUtil().setHeight(4.0)),
          RichText(
            text: TextSpan(
                text: '\$  ',
                style: GoogleFonts.lato(
                    letterSpacing: -0.25,
                    fontSize: ScreenUtil().setSp(12.0),
                    color: Theme.of(context).primaryColor),
                children: <TextSpan>[
                  TextSpan(
                    text: widget.product.price.toString(),
                    style: GoogleFonts.lato(
                        letterSpacing: -0.25,
                        fontSize: ScreenUtil().setSp(18.0),
                        color: Color(0xFF222222),)
                  )
                ]),
          )
        ],
      ),
    );
  }
}
