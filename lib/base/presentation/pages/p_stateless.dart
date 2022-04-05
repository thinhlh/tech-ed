import 'package:flutter/material.dart';
import 'package:tech_ed/base/presentation/pages/page_actions.dart';
import 'package:provider/provider.dart';
import 'package:tech_ed/base/presentation/providers/dialog_provider.dart';

abstract class PageStateless<T extends DialogProvider> extends StatelessWidget
    implements PageActions {
  PageStateless({Key? key}) : super(key: key);

  late final T provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<T>(context, listen: false);
    initialization(context);

    return Scaffold(
      body: SafeArea(
        child: buildPage(context),
      ),
    );
  }
}
