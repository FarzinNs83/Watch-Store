import 'package:flutter/cupertino.dart';
import 'package:watch_store/routes/screen_route_names.dart';
import 'package:watch_store/screens/get_otp_screen.dart';
import 'package:watch_store/main_wrapper.dart';
import 'package:watch_store/screens/register_screen.dart';
import 'package:watch_store/screens/send_otp_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreenRouteNames.sendOtp : (context)=> SendOtpScreen(),
  ScreenRouteNames.getOtp : (context)=> GetOtpScreen(),
  ScreenRouteNames.register : (context)=> RegisterScreen(),
  ScreenRouteNames.mainWrapper : (context)=> MainWrapper(),
};
