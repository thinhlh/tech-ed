import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tech_ed/app/common/presentation/widgets/dialog/w_error_dialog.dart';

class AppDialog {
  static BuildContext? _context;
  AppDialog._internal();

  /// Show the dialog and store it's context for further dismiss
  static Future<T?> showAppDialog<T>(
      BuildContext context, WErrorDialog dialog) {
    _context = context;
    return showDialog<T>(
      context: context,
      builder: (_) => dialog,
    );
  }

  static void dismissAppDialog<T>(BuildContext context, {T? result}) async {
    if (_context == null) {
      // Do nothing
    } else {
      if (Navigator.canPop(context)) {
        Navigator.pop(context, result);
        _context = null;
      }
    }
  }
}
