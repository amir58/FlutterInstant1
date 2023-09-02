import 'package:instant1/inheritance/base_screen.dart';
import 'package:instant1/inheritance/sliders_interface.dart';

// Sub class
// Child class
class HomeScreen extends BaseScreen implements SliderInterface {
  HomeScreen() : super("HomeScreen");

  void execute() {
    super.checkInternet();
    // false
    super.showNetworkErrorMessage();
    // true
    super.showLoadingAnimation();

    getData();

    super.hideLoadingAnimation();

    // super._updateUi();
  }

  @override
  void getData() {
    // TODO: implement getData
  }

  @override
  void onSlideChange() {
    // TODO: implement onSlideChange
  }

}
