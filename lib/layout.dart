import 'package:admin_panel/helpers/responsiveness.dart';
import 'package:admin_panel/widgets/large_screen.dart';
import 'package:admin_panel/widgets/side_menu.dart';
import 'package:admin_panel/widgets/small_screen.dart';
import 'package:admin_panel/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: LargeScreen(),
      ),
    );
  }
}
