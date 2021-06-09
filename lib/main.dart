import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/welcome.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(411, 866),
        builder: () => MaterialApp(
              title: 'NATURAL SQUEEZE',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primaryColor: Color(0xFF438E77),
                scaffoldBackgroundColor: Colors.white,
              ),
              home: WelcomeScr(),
            ));
  }
}
