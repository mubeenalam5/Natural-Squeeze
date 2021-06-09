import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natrualsqueeze/models/product.dart';
import 'package:natrualsqueeze/widgets/textbutton.dart';
import 'package:natrualsqueeze/widgets/cartwidget.dart';

class ProductDetailScr extends StatefulWidget {
  final Product product;

  const ProductDetailScr({@required this.product});
  @override
  _ProductDetailScrState createState() => _ProductDetailScrState();
}

class _ProductDetailScrState extends State<ProductDetailScr> {
  int shugar = 1, ginger = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                      width: double.infinity,
                      height: ScreenUtil().setHeight(350)),
                  Arc(
                      edge: Edge.BOTTOM,
                      arcType: ArcType.CONVEX,
                      height: 35.0,
                      child: Container(
                        alignment: Alignment.topCenter,
                        height: ScreenUtil().screenHeight * 0.289,
                        width: ScreenUtil().screenWidth,
                        padding: EdgeInsets.symmetric(
                            vertical: ScreenUtil().setHeight(35.0),
                            horizontal: ScreenUtil().setWidth(37.0)),
                        decoration: BoxDecoration(
                            color: Color(0xFFDDFFEE).withOpacity(0.8),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/confetti@3x.png',
                                ))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                  size: 30.0,
                                )),
                            CartWidget(cartitems: 1)
                          ],
                        ),
                      )),
                  Positioned(
                    bottom: ScreenUtil().setHeight(-10.0),
                    right: ScreenUtil().setWidth(5.0),
                    child: Image.asset(
                      widget.product.image,
                      fit: BoxFit.fill,
                      height: ScreenUtil().setHeight(300),
                      width: ScreenUtil().setWidth(300),
                    ),
                  )
                ],
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(25.0)),
                  child: Text(
                    widget.product.title + ' Black',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lato(
                        letterSpacing: -0.40,
                        fontWeight: FontWeight.w600,
                        fontSize: ScreenUtil().setSp(20.0),
                        color: Color(0xFF222222)),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(12.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(105.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: '\$  ',
                          style: GoogleFonts.lato(
                              letterSpacing: -0.25,
                              fontSize: ScreenUtil().setSp(15.0),
                              color: Theme.of(context).primaryColor),
                          children: <TextSpan>[
                            TextSpan(
                                text: widget.product.price.toString(),
                                style: GoogleFonts.lato(
                                  letterSpacing: -0.25,
                                  fontSize: ScreenUtil().setSp(22.0),
                                  color: Color(0xFF222222),
                                ))
                          ]),
                    ),
                    StatefulBuilder(
                      builder: (_, state) => Container(
                        height: ScreenUtil().setHeight(42.0),
                        width: ScreenUtil().setWidth(122.0),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => state(() => { if (widget.product.quantity>0) widget.product.quantity--}),
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 16.0,
                              ),
                            ),
                            Text(widget.product.quantity.toString(),
                                style: GoogleFonts.lato(
                                  letterSpacing: -0.25,
                                  fontSize: ScreenUtil().setSp(14.0),
                                  color: Colors.white,
                                )),
                            IconButton(
                              onPressed: () => state(() => {widget.product.quantity++}),
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(50.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(57.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lato(
                          letterSpacing: -0.45,
                          fontWeight: FontWeight.w600,
                          fontSize: ScreenUtil().setSp(18.0),
                          color: Color(0xFF222222)),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(22.0),
                    ),
                    Text(
                      'Handcrafted in small batches daily, slow-steeped in cool water for 20 hours, without touching heat—our Cold Brew is made from our custom blend of beans grown to steep long and cold for a super-smooth flavor.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lato(
                          letterSpacing: -0.45,
                          fontSize: ScreenUtil().setSp(15.0),
                          color: Color(0xFFA5A5A5)),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(38.0),
                    ),
                    Text(
                      'Your Options',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lato(
                          letterSpacing: -0.45,
                          fontWeight: FontWeight.w600,
                          fontSize: ScreenUtil().setSp(18.0),
                          color: Color(0xFF222222)),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(17.0),
                    ),
                    Center(
                      child: Column(
                        children: [
                          addOnsCard('Shugar', 0.40, shugar),
                          SizedBox(
                            height: ScreenUtil().setHeight(16.0),
                          ),
                          addOnsCard('Extra ginger', 0.20, ginger)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(22.0),
                    ),
                    Text(
                      'Milk Type',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lato(
                          letterSpacing: -0.45,
                          fontWeight: FontWeight.w600,
                          fontSize: ScreenUtil().setSp(18.0),
                          color: Color(0xFF222222)),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(15.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => setState(() {
                            isAlmond = false;
                          }),
                          child: Container(
                            height: ScreenUtil().setHeight(54.0),
                            width: ScreenUtil().setWidth(143.0),
                            decoration: BoxDecoration(
                                color: isAlmond
                                    ? Colors.white
                                    : Theme.of(context).primaryColor,
                                shape: BoxShape.rectangle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade50,
                                      spreadRadius: 6.0,
                                      blurRadius: 6.0)
                                ],
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Center(
                              child: Text('Whole Milk',
                                  style: GoogleFonts.lato(
                                    color: isAlmond
                                        ? Color(0xFF242424)
                                        : Colors.white,
                                    fontSize: ScreenUtil().setSp(18.0),
                                  )),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => setState(() {
                            isAlmond = true;
                          }),
                          child: Container(
                            height: ScreenUtil().setHeight(54.0),
                            width: ScreenUtil().setWidth(138.0),
                            decoration: BoxDecoration(
                                color: isAlmond
                                    ? Theme.of(context).primaryColor
                                    : Colors.white,
                                shape: BoxShape.rectangle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade50,
                                      spreadRadius: 6.0,
                                      blurRadius: 6.0)
                                ],
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Center(
                              child: Text('Almond',
                                  style: GoogleFonts.lato(
                                    color: isAlmond
                                        ? Colors.white
                                        : Color(0xFF242424),
                                    fontSize: ScreenUtil().setSp(18.0),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(50.0),
              ),
              Center(
                child: TempTextButton(
                  height: 70.0,
                  width: 239.0,
                  text: 'Add To Cart',
                  textSize: 16.0,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isAlmond = true;

  addOnsCard(String name, double price, int quantity) {
    return StatefulBuilder(
      builder: (_, state) => Container(
        height: ScreenUtil().setHeight(68.0),
        width: ScreenUtil().setWidth(313.0),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(60.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade50,
                  spreadRadius: ScreenUtil().setWidth(6.0),
                  blurRadius: ScreenUtil().setWidth(6.0))
            ]),
        child: ListTile(
          contentPadding: EdgeInsets.only(
              left: ScreenUtil().setWidth(35.0),
              right: ScreenUtil().setWidth(25.0)),
          title: Text(
            name,
            textAlign: TextAlign.left,
            style: GoogleFonts.lato(
                letterSpacing: -0.45,
                fontSize: ScreenUtil().setSp(16.0),
                color: Color(0xFF242424)),
          ),
          subtitle: Text(
            '\$ ' + price.toString(),
            textAlign: TextAlign.left,
            style: GoogleFonts.lato(
                letterSpacing: -0.45,
                fontSize: ScreenUtil().setSp(13.0),
                color: Color(0xFFA5A5A5)),
          ),
          trailing: Container(
            width: ScreenUtil().setWidth(87.0),
            height: ScreenUtil().setHeight(27.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => state(() => {if (quantity > 0) quantity--}),
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
                Text(
                  quantity.toString(),
                  style: GoogleFonts.lato(
                    letterSpacing: -0.25,
                    fontSize: ScreenUtil().setSp(12.0),
                    color: Color(0xFF242424),
                  ),
                ),
                GestureDetector(
                  onTap: () => state(() => {quantity++}),
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
