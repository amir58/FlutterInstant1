import 'package:instant1/inheritance/base_screen.dart';

// Sub class
// Child class
class HomeScreen extends BaseScreen {
  HomeScreen() : super("HomeScreen");

  
  void execute() {
    super.checkInternet();
    // false
    super.showNetworkErrorMessage();
    // true
    super.showLoadingAnimation();

    super.getData();

    super.hideLoadingAnimation();

    // super._updateUi();
  }
}
