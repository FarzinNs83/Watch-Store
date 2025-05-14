import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:watch_store/resources/app_theme.dart';
import 'package:watch_store/resources/media_size.dart';
import 'package:watch_store/routes/routes.dart';
import 'package:watch_store/routes/screen_route_names.dart';
import 'package:watch_store/main_wrapper.dart';
import 'package:watch_store/screens/register_screen.dart';
import 'package:watch_store/screens/send_otp_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [const Locale('en', 'US'), const Locale('fa', 'IR')],
      locale: const Locale('fa', 'IR'),
      theme: AppTheme().themeData,
      debugShowCheckedModeBanner: false,
      routes: routes,
      // initialRoute: ScreenRouteNames.root,
      home: MainWrapper(),
    );
  }
}
