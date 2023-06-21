import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';

class SnackbarHelper {
  static void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),backgroundColor: AppColors.blackColor,
       
      ),
    );
  }
}