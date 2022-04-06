import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tech_ed/base/presentation/providers/dialog_provider.dart';

class PageContainerProvider extends DialogProvider {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  PersistentTabController get controller => _controller;
  setController(int index) {
    _controller.index = index;
    notifyListeners();
  }
}
