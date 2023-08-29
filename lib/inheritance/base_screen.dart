// Super class
// Parent class
class BaseScreen {
  final String _screenName;

  BaseScreen(this._screenName) {
    print('Current screen => $_screenName');
  }

  void checkInternet() {
    // CODE
  }

  void showNetworkErrorMessage() {}

  void getData() {}

  void showLoadingAnimation() {
    print('Circle animation');
  }

  void hideLoadingAnimation() {}

  void _updateUi() {}
}
