import 'package:instant1/inheritance/base_screen.dart';
// Sub class
// Child class
class HomeScreen extends BaseScreen{

  void execute(){
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