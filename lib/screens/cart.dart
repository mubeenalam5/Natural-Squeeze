import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natrualsqueeze/models/product.dart';
import 'package:natrualsqueeze/widgets/textbutton.dart';
import 'package:natrualsqueeze/widgets/cartTile.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'checkout.dart';

class CartScr extends StatefulWidget {
  @override
  _CartScrState createState() => _CartScrState();
}

class _CartScrState extends State<CartScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(47.0)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: ScreenUtil().setHeight(44.0),
            ),
            GestureDetector(
                // onTap: () => Navigator.pop(context),
                child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30.0,
            )),
            SizedBox(
              height: ScreenUtil().setHeight(25.0),
            ),
            Text('Your Cart',
                style: GoogleFonts.lato(
                    fontSize: ScreenUtil().setSp(25.0),
                    letterSpacing: -0.8,
                    color: Color(0xFF222222)),
                textAlign: TextAlign.right),
            SizedBox(
              height: ScreenUtil().setHeight(42.0),
            ),
            ListView.separated(
              itemCount: cartProducts.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemBuilder: (BuildContext context, int index) {
                return CartProductCard(
                  product: cartProducts[index],
                );
              },
            ),
            SizedBox(
              height: ScreenUtil().setHeight(21.0),
            ),
            Align(
              alignment: Alignment.topRight,
              child: RichText(
              text: TextSpan(
                  text: 'Total   ',
                  style: GoogleFonts.lato(
                      letterSpacing: -0.25,
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenUtil().setSp(16.0),
                      color: Color(0xFF242424)),
                  children: <TextSpan>[
                    TextSpan(
                        text: '\$',
                        style: GoogleFonts.lato(
                          letterSpacing: -0.25,
                          fontSize: ScreenUtil().setSp(14.0),
                          color: Theme.of(context).primaryColor
                        )),
                    TextSpan(
                        text: ' 27.39',
                        style: GoogleFonts.lato(
                          letterSpacing: -0.25,
                          fontSize: ScreenUtil().setSp(21.0),
                          color: Color(0xFF242424),
                        ))
                  ]),
            ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(100.0),
            ),
            Center(
              child: TempTextButton(
                height: 70.0,
                width: 239.0,
                text: 'Checkout',
                textSize: ScreenUtil().setSp(16),
                onPressed: () => pushNewScreen(context, screen: CheckoutScr(),withNavBar: true),
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

  List<Product> cartProducts = [
    Product(
        image: 'assets/☕@3x.png',
        title: 'Cold Brew',
        description: 'Authentic cold brew',
        price: 2.49,
        quantity: 1),
    Product(
        image: 'assets/🥯@3x.png',
        title: 'Bagel',
        description: 'Cream cheese bagel',
        price: 9.39,
        quantity: 1),
    Product(
        image: 'assets/🍹@3x.png',
        title: 'Berry Juice',
        description: 'Mix of berries juice',
        price: 7.39,
        quantity: 1),
  ];
}
