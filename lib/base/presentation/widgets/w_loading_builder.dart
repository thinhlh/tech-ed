import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:tech_ed/base/presentation/providers/loading_provider.dart';
import 'package:tech_ed/services/dialogs/app_loading.dart';

class WidgetLoadingBuilder<T extends LoadingProvider> extends StatelessWidget {
  final Widget child;
  final Widget parent;

  const WidgetLoadingBuilder(
    this.child,
    this.parent, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            parent,
            child,
            Selector<T, bool>(
              selector: (_, provider) => provider.isLoading,
              builder: (_, isLoading, child) {
                SchedulerBinding.instance?.addPostFrameCallback((_) => isLoading
                    ? AppLoading.showLoading(context)
                    : AppLoading.dismissLoading(context));
                return const SizedBox.shrink();
              },
            )
          ],
        ),
      ),
    );
  }
}
