import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natrualsqueeze/models/product.dart';

class CartProductCard extends StatefulWidget {
  final Product product;

  const CartProductCard({this.product});
  @override
  _CartProductCardState createState() => _CartProductCardState();
}

class _CartProductCardState extends State<CartProductCard> {
  
  onAdd() {
    setState(() {
      widget.product.quantity++;
    });
  }

  onRemove() {
    setState(() {
      widget.product.quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(298.0),
      height: ScreenUtil().setHeight(79.0),
      child: Center(
        child: ListTile(
          contentPadding: EdgeInsets.zero,

          leading: Container(
            height: ScreenUtil().setHeight(66.0),
            width: ScreenUtil().setWidth(75.0),
            decoration: BoxDecoration(
                color: Color(0xFFF7FFFB),
                borderRadius: BorderRadius.circular(15.0)),
            child: Center(
              child: Image.asset(
                widget.product.image,
                height: ScreenUtil().setHeight(52.0),
                width: ScreenUtil().setWidth(41.0),
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Transform.translate(
          offset: Offset(0, -4.0),
            child: Text(
               widget.product.title,
              textAlign: TextAlign.left,
              style: GoogleFonts.lato(
                  letterSpacing: -0.25,
                  fontSize: ScreenUtil().setSp(16.0),
                  color: Color(0xFF222222)),
            ),
          ),
          subtitle: Transform.translate(
          offset: Offset(0, 3.0),
                      child: RichText(
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
                          color: Color(0xFF222222),
                        ))
                  ]),
            ),
          ),
          trailing: Container(
            width: ScreenUtil().setWidth(87.0),
            height: ScreenUtil().setHeight(27.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: onRemove,
                                  child: Container(
                    width: ScreenUtil().setWidth(27.0),
                    height: ScreenUtil().setHeight(27.0),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        size: ScreenUtil().setSp(14.0),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Text(widget.product.quantity.toString(),
                  style: GoogleFonts.lato(
                        letterSpacing: -0.25,
                        fontSize: ScreenUtil().setSp(12.0),
                        color: Color(0xFF242424),
                      ),
                ),
                GestureDetector(
                  onTap: onAdd,
                                  child: Container(
                    width: ScreenUtil().setWidth(27.0),
                    height: ScreenUtil().setHeight(27.0),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: ScreenUtil().setSp(14.0),
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
