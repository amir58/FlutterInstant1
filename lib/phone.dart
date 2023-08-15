class Phone {
  // Encapsulation => variables private + functions public
  String name = '';
  String _os = '';
  int _price = 0;

  Phone.android({
    required this.name,
    required int price,
  }) : _price = price {
    _os = "Android";
  }

  Phone.iOS({
    required this.name,
    required int price,
  }) {
    _os = "iOS";
    _price = price;
  }

  String getOperatingSystem(){
    return _os;
  }

  int getPrice(){
    return _price;
  }

  void setPrice(int price){
    if (price < 1) {
      return;
    }
    _price = price;
  }

// setters and getters
  int get price => _price;

  set price(int value) {
    if (price < 1) {
      return;
    }
    _price = value;
  }

}
