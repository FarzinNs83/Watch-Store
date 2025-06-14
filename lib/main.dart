import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:watch_store/resources/app_theme.dart';
import 'package:watch_store/routes/routes.dart';
import 'package:watch_store/routes/screen_route_names.dart';
import 'package:watch_store/main_wrapper.dart';
import 'package:watch_store/screens/register_screen.dart';
import 'package:watch_store/screens/send_otp_screen.dart';
import 'package:watch_store/screens/single_product.dart';
import 'package:watch_store/screens/top_seller_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('fa', 'IR')],
      locale: Locale('fa', 'IR'),
      theme: AppTheme().themeData,
      debugShowCheckedModeBanner: false,
      routes: routes,
      // initialRoute: ScreenRouteNames.root,
      home: MainWrapper(),
    );
  }
}
