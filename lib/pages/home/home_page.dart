import 'package:flutter/material.dart';
import 'package:flutterweb/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:flutterweb/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:flutterweb/pages/home/widgets/sections/advantages_section.dart';
import 'package:flutterweb/pages/home/widgets/sections/courses_section.dart';
import 'package:flutterweb/pages/home/widgets/sections/top_section.dart';

import '../../breakpoints.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint){
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraint.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
              )
              : PreferredSize(child: WebAppBar(), preferredSize: Size(double.infinity, 72),),
            drawer: constraint.maxWidth < mobileBreakpoint ? Drawer() :  null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 1400,
                ),
                child: ListView(
                    children: [
                      TopSection(),
                      AdvantagesSection(),
                      CoursesSection(),
                    ],
                ),
            ),
          ),
        );
      }
    );
  }
}
