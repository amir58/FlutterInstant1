import 'package:instant1/inheritance/base_screen.dart';

main() {
  FavScreen favScreen = FavScreen("FavScreen");

  favScreen.execute();
}

class FavScreen extends BaseScreen{
  FavScreen(super.screenName);

  // Override

  void execute(){

    showLoadingAnimation();
  }

  // To override a function => ctrl + o
  @override
  void showLoadingAnimation() {
    // super.showLoadingAnimation();
    print('Heart animation');
  }
}