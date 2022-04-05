import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tech_ed/base/presentation/widgets/w_loading.dart';

class AppLoading {
  static BuildContext? _context;
  static bool _isShowing = false;
  AppLoading._internal();

  /// Show the dialog and store it's context for further dismiss
  static Future showLoading(BuildContext context) {
    if (_isShowing) dismissLoading(context);
    _isShowing = true;
    _context = context;
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => const WLoading(
        color: Colors.white,
      ),
    );
  }

  static void dismissLoading(BuildContext context) async {
    if (_context == null) {
      // Do nothing
    } else {
      if (Navigator.canPop(_context!)) {
        Navigator.pop(_context!);
        _context = null;
        _isShowing = false;
      }
    }
  }
}
