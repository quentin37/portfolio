import 'package:flutter/cupertino.dart';

class Responsive extends StatefulWidget {
  static double maxMobilWidth = 650;
  static double maxTabletWidth = 1200;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < maxMobilWidth;

  static bool isMobileNoMatterOrientation(BuildContext context) =>
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.shortestSide < maxMobilWidth;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < maxTabletWidth &&
          MediaQuery.of(context).size.width >= maxMobilWidth;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= maxTabletWidth;

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({super.key, required this.mobile, required this.tablet, required this.desktop});

  @override
  ResponsiveState createState() {
    return ResponsiveState();
  }

}


class ResponsiveState extends State<Responsive> {
  static double maxTabletWidth = 1200;
  static double maxMobilWidth = 650;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= maxTabletWidth) {
          return widget.desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= maxMobilWidth) {
          return widget.tablet;
        }
        // Or less then that we called it mobile
        else {
          return widget.mobile;
        }
      },
    );
  }
}
