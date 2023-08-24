void main() {
  final Car blueCar = Car(color: "blue", engine: "v8");
  print(blueCar.color);
  print(blueCar.engine);
}

class Car {
  //! constructor
  Car({required this.color, required this.engine});

  //! attribute
  final String color;
  final String engine;

  //! methods
  void drive() {
    print('${this.color} car is moving');
  }

  void whichColor() {
    print('car color: ${this.color}');
  }
}
