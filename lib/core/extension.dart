import 'package:flutter/material.dart';

extension MediaSize on BuildContext {
  double height() {
    return MediaQuery.of(this).size.height;
  }

  double width() {
    return MediaQuery.of(this).size.width;
  }
}
