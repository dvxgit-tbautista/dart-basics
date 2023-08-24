void main() {
  Car car1 = Car();
  car1.setColor = "pink";

  Car car2 = Car();
  car2.setColor = "blue";

  // car1.whichColor();
  // car2.whichColor();

  // car1.drive();
  // car2.drive();

  String colorFromCar1 = car1.color;
  String colorFromCar2 = car2.color;

  print('color from car 1: $colorFromCar1');
  print('color from car 2: $colorFromCar2');
}

class Car {
  //! attribute
  late String _color;

  //! setter - set attribute
  set setColor(String color) {
    this._color = color;
  }

  //! getter
  String get color => this._color;

  //! methods
  void drive() {
    print(' ${this._color} car is moving');
  }

  void whichColor() {
    print('car color: ${this._color}');
  }
}
