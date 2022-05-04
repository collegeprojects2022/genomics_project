import 'package:flutter/material.dart';

double height(BuildContext context, double fraction,
    {bool hasAppBar = true}) {
  final screenHeight = MediaQuery.of(context).size.height;
  fraction = (hasAppBar
          ? (screenHeight -
              AppBar().preferredSize.height -
              MediaQuery.of(context).padding.top)
          : screenHeight) /
      fraction;
  return fraction;
}

double width(
  BuildContext context,
  double fraction,
) {
  return MediaQuery.of(context).size.width / fraction;
}
