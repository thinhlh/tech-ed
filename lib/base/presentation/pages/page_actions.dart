import 'package:flutter/material.dart';

abstract class PageActions {
  /// This method is called as the page main content
  Widget buildPage(BuildContext context);

  /// This method is called for initialization or data fetching.
  /// In Stateless pages, it will be executed before build function
  ///
  /// In Stateful pages, it will be executed after initState
  void initialization(BuildContext context);
}
