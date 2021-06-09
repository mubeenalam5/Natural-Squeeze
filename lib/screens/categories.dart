import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natrualsqueeze/models/product.dart';
import 'package:natrualsqueeze/widgets/productcard.dart';

import '../widgets/cartwidget.dart';

class CategoriesScr extends StatefulWidget {
  @override
  _CategoriesScrState createState() => _CategoriesScrState();
}

class _CategoriesScrState extends State<CategoriesScr> {
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
                  height: ScreenUtil().setHeight(35.0),
                  child: Container(
                    height: ScreenUtil().screenHeight * 0.25,
                    width: ScreenUtil().screenWidth,
                    padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(57.0),
                        bottom: ScreenUtil().setHeight(30.0),
                        left: ScreenUtil().setWidth(47.0),
                        right: ScreenUtil().setWidth(35.0)),
                    decoration: BoxDecoration(
                        color: Color(0xFFDDFFEE).withOpacity(0.8),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/confetti@3x.png',
                            ))),
                    child: Column(
                      children: [
                        Row(
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
                        SizedBox(
                          height: ScreenUtil().setHeight(35.0),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              width: ScreenUtil().setWidth(198.0),
                              child: Text(
                                'Our Sandwiches',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lato(
                                    letterSpacing: -0.45,
                                    fontWeight: FontWeight.w600,
                                    fontSize: ScreenUtil().setSp(21),
                                    color: Color(0xFF222222)),
                              )),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: ScreenUtil().setHeight(25.0),
              ),
              Padding(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(47)),
                child: Text(
                  'What are you looking for?',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                      letterSpacing: -0.45,
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenUtil().setSp(18),
                      color: Color(0xFF222222)),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(12.0),
              ),
              Container(
                height: ScreenUtil().setHeight(50.0),
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(47)),
                  scrollDirection: Axis.horizontal,
                  itemCount: chipsImage.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: ScreenUtil().setWidth(11.0),
                  ),
                  itemBuilder: (BuildContext context, int index) => ActionChip(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(12),
                        vertical: ScreenUtil().setHeight(8.0)),
                    backgroundColor: Colors.white,
                    shadowColor: Colors.grey.shade200,
                    elevation: 3,
                    avatar: Image.asset(chipsImage[index]),
                    label: Text(chipsText[index]),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(25.0),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(47)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Popular Now',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lato(
                          letterSpacing: -0.45,
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenUtil().setSp(18),
                          color: Color(0xFF222222)),
                    ),
                    Text(
                      'See All',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lato(
                          letterSpacing: -0.45,
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenUtil().setSp(14),
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(12.0),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  alignment: WrapAlignment.center,
                    spacing: ScreenUtil().setWidth(3.1),
                    children: List.generate(
                        popular.length,
                        (index) => ProductCard(
                            product: popular[index], cardWidth: 146.0))),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(35.0),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(47)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Our Bagels',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lato(
                          letterSpacing: -0.45,
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenUtil().setSp(18),
                          color: Color(0xFF222222)),
                    ),
                    Text(
                      'See All',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lato(
                          letterSpacing: -0.45,
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenUtil().setSp(14),
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(12.0),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  alignment: WrapAlignment.center,
                    spacing: ScreenUtil().setWidth(3.1),
                    children: List.generate(
                        bagels.length,
                        (index) => ProductCard(
                            product: bagels[index], cardWidth: 146.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Product> popular = [
    Product(
        image: 'assets/🥪@3x.png',
        title: 'Ham Sandwiches',
        description: 'Orignal ham sandwich',
        price: 5.49),
    Product(
        image: 'assets/🥯@3x.png',
        title: 'Classic Bagel',
        description: 'Cream cheese bagel',
        price: 9.39),
    Product(
        image: 'assets/🥯@3x.png',
        title: 'Vegan Bagel',
        description: 'Chick peas bagel',
        price: 9.99),
    Product(
        image: 'assets/🥪@3x.png',
        title: 'Grilled Cheese',
        description: 'Classic grilled cheese',
        price: 5.49)
  ];

  List<Product> bagels = [
    Product(
        image: 'assets/🥯@3x.png',
        title: 'Cheese Bagel',
        description: 'Cheddar bagel',
        price: 7.49),
    Product(
        image: 'assets/🥯@3x.png',
        title: 'Classic Bagel',
        description: 'Cream cheese bagel',
        price: 9.39),
    Product(
        image: 'assets/🥯@3x.png',
        title: 'Vegan Bagel',
        description: 'Chick peas bagel',
        price: 9.99),
    Product(
        image: 'assets/🥯@3x.png',
        title: 'Grilled Cheese',
        description: 'Classic grilled cheese',
        price: 5.49)
  ];

  List<String> chipsImage = [
    'assets/🥯.png',
    'assets/♨️.png',
    'assets/❄️.png',
    'assets/🌱.png'
  ];

  List<String> chipsText = ['Bagel', 'Hot', 'Cold', 'Vegitarian'];
}
