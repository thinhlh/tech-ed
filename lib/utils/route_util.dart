import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class RouteUtil {
  RouteUtil._internal();

  static Widget createPageProvider<T extends ChangeNotifier>({
    required T Function(BuildContext) provider,
    required Widget child,
  }) {
    return ChangeNotifierProvider<T>(
      child: child,
      create: provider,
    );
  }
}
