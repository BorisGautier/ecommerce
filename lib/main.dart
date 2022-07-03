import 'package:ecommerce/src/app.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/src/core/di/di.dart' as di;

void main() {
  di.init();
  runApp(const MyApp());
}
