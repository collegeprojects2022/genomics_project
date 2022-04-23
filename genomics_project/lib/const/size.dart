import 'package:flutter/material.dart';

double sizeFromHeight(BuildContext context, double fraction,
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

double sizeFromWidth(
  BuildContext context,
  double fraction,
) {
  return MediaQuery.of(context).size.width / fraction;
}
