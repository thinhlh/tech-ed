import 'package:flutter/material.dart';
import 'package:tech_ed/base/presentation/pages/p_stateful.dart';
import 'package:tech_ed/base/presentation/providers/loading_provider.dart';
import 'package:tech_ed/base/presentation/widgets/w_loading_builder.dart';

abstract class PageLoadingStateful<T extends LoadingProvider,
    P extends StatefulWidget> extends PageStateful<T, P> {
  @override
  Widget build(BuildContext context) {
    final parent = super.build(context);

    return WidgetLoadingBuilder<T>(buildPage(context), parent);
  }
}
