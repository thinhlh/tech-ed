import 'package:tech_ed/base/presentation/providers/dialog_provider.dart';

abstract class LoadingProvider extends DialogProvider {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void showLoading(bool show) {
    _isLoading = show;
    notifyListeners();
  }
}
