import 'package:alo_taxi/core/theme/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<bool?> toastShow(
  String text, {
  bool translate = false,
  ToastStates state = ToastStates.success,
}) async {
  // Translation? translation;
  // if (translate) {
  //   translation = await GoogleTranslator().translate(text, to: 'ar');
  // }
  return Fluttertoast.showToast(
      msg: translate ? 'translation!.text' : text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: chooseToastColor(state),
      textColor: Colors.white,
      fontSize: 16.0);
}

enum ToastStates { success, error, warning }

chooseToastColor(ToastStates state) {
  if (state == ToastStates.success) {
    return Colors.green;
  } else if (state == ToastStates.error) {
    return Colors.red;
  } else if (state == ToastStates.warning) {
    return Colors.amber;
  }
  const Map<ToastStates, Color> toastColors = {
    ToastStates.success: LightColorsManager.primary,
    ToastStates.warning: Colors.amber,
    ToastStates.error: Colors.red,
  };
  return toastColors[state];
}
