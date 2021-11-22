import 'package:booking_app/value/app_get.dart';
import 'package:booking_app/view/home_screen.dart';
import 'package:booking_app/widgets/custom_buttom_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<AppGet>(
          init: AppGet(),
          builder: (controller) {
            return PageNav.widgetOptions[controller.indexScreen];
          },
        ),
        bottomNavigationBar: CustomNavBottom());
  }
}

class PageNav {
  static List<Widget> widgetOptions = <Widget>[
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
}
