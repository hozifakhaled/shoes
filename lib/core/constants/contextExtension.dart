// ignore_for_file: file_names

import 'package:flutter/material.dart';
extension ContextExtension on BuildContext {
double get height  {
  return MediaQuery.sizeOf(this).height;
}
double get width  {
  return MediaQuery.sizeOf(this).width;
}
}