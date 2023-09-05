import 'package:instant1/inheritance/base_screen.dart';
import 'package:instant1/inheritance/slider_mixin.dart';

main() {
  FavScreen favScreen = FavScreen("FavScreen");
  favScreen.onSlideChange();
}

class FavScreen extends BaseScreen with SliderMixin {
  FavScreen(super.screenName);

  // Override

  void execute() {
    showLoadingAnimation();
  }

  // To override a function => ctrl + o
  @override
  void showLoadingAnimation() {
    // super.showLoadingAnimation();
    print('Heart animation');
  }

  @override
  void getData() {
    // TODO: implement getData
  }
}
