import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natrualsqueeze/screens/categories.dart';
import 'package:natrualsqueeze/screens/productdetail.dart';
import 'package:natrualsqueeze/widgets/allproductcard.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../widgets/cartwidget.dart';
import '../widgets/textbutton.dart';
import '../widgets/productcard.dart';
import '../models/product.dart';

class HomeScr extends StatefulWidget {
  @override
  _HomeScrState createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Arc(
              edge: Edge.BOTTOM,
              arcType: ArcType.CONVEX,
              height: 35.0,
              child: Container(
                height: ScreenUtil().screenHeight * 0.31,
                width: ScreenUtil().screenWidth,
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(57.0),
                    bottom: ScreenUtil().setHeight(30.0),
                    left: ScreenUtil().setWidth(57.0),
                    right: ScreenUtil().setWidth(35.0)),
                decoration: BoxDecoration(
                    color: Color(0xFFDDFFEE).withOpacity(0.8),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/confetti@3x.png',
                        ))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: CartWidget(cartitems: 1)
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(50.0),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: ScreenUtil().setWidth(198.0),
                          child: Text(
                            'What would you like today?',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lato(
                                letterSpacing: -0.45,
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: Color(0xFF222222)),
                          )),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(50.0),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(57.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Natural Squeeze?',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lato(
                        letterSpacing: -0.45,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xFF222222)),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(22.0),
                  ),
                  Text(
                    'We’re not just passionate purveyors of coffee, but everything else that goes with a full and rewarding coffeehouse experience. ',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lato(
                        letterSpacing: -0.45,
                        fontSize: ScreenUtil().setSp(15.0),
                        color: Color(0xFFA5A5A5)),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(17.0),
                  ),
                  TempTextButton(
                    height: ScreenUtil().setHeight(42.0),
                    width: ScreenUtil().setWidth(147.0),
                    text: 'Learn More',
                    textSize: 13.0,
                    onPressed: () =>
                        pushNewScreen(context, screen: CategoriesScr()),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(36.0),
            ),
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(57)),
              child: Text(
                'Hot Items',
                textAlign: TextAlign.left,
                style: GoogleFonts.lato(
                    letterSpacing: -0.45,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFF222222)),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(19.0),
            ),
            Container(
              height: ScreenUtil().setHeight(200.0),
              child: ListView.separated(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(57)),
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  width: ScreenUtil().setWidth(10.0),
                ),
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                      onTap: () =>
                        pushNewScreen(context, screen: ProductDetailScr(product: products[index])),
                      child: ProductCard(product: products[index], cardWidth: 133.0)
                    ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(35.0),
            ),
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(57)),
              child: Text(
                'All Our Products',
                textAlign: TextAlign.left,
                style: GoogleFonts.lato(
                    letterSpacing: -0.45,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFF222222)),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20.0),
            ),
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(47)),
              physics: ClampingScrollPhysics(),
              itemCount: products.length,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: ScreenUtil().setHeight(10.0),
              ),
              itemBuilder: (BuildContext context, int index) => AllProductCard(
                product: allproducts[index],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  List<Product> products = [
    Product(
        quantity: 1,
        image: 'assets/☕@3x.png',
        title: 'Cold Brew',
        description: 'Authentic cold brew',
        price: 2.49),
    Product(
      quantity: 1,
        image: 'assets/🥯@3x.png',
        title: 'Bagel',
        description: 'Cream cheese bagel',
        price: 9.39),
    Product(
      quantity: 1,
        image: 'assets/🍵@3x.png',
        title: 'Green Tea',
        description: 'Chinese green tea',
        price: 2.99),
    Product(
      quantity: 1,
        image: 'assets/🍹@3x.png',
        title: 'Berry Juice',
        description: 'Mix of berries juice',
        price: 7.39),
  ];
  List<Product> allproducts = [
    Product(
        image: 'assets/🧃@3x.png',
        title: 'Juices',
        description: 'Authentic cold brew',
        price: 2.49),
    Product(
        image: 'assets/🥤@3x.png',
        title: 'Smoothies',
        description: 'Authentic cold brew',
        price: 2.49),
    Product(
        image: 'assets/☕@3x.png',
        title: 'Lattes',
        description: 'Cream cheese bagel',
        price: 9.39),
    Product(
        image: 'assets/🥪@3x.png',
        title: 'Sandwiches',
        description: 'Chinese green tea',
        price: 2.99),
    Product(
        image: 'assets/🥗@3x.png',
        title: 'Salads',
        description: 'Mix of berries juice',
        price: 7.39),
  ];
}
