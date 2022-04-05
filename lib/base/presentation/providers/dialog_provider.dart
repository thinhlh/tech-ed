import 'package:flutter/material.dart';
import 'package:tech_ed/app/common/presentation/widgets/dialog/w_error_dialog.dart';
import 'package:tech_ed/services/dialogs/app_dialog.dart';

abstract class DialogProvider with ChangeNotifier {
  Future<T?> showDialog<T>(BuildContext context, WErrorDialog dialog) {
    return AppDialog.showAppDialog<T>(context, dialog);
  }

  void dismissDialog<T>(BuildContext context, {T? result}) {
    return AppDialog.dismissAppDialog(context, result: result);
  }
}
