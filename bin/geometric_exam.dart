// import 'package:dart_application_s2/dart_application_s2.dart' as dart_application_s2;

// void main(List<String> arguments) {
//   print('Hello world: ${dart_application_s2.calculate()}!');
// }

import 'dart:math';

class GeometricObject {
  String color;
  bool filled;

  GeometricObject({this.color = 'white', this.filled = false});

  @override
  String toString() {
    return 'GeometricObject(color: $color, filled: $filled)';
  }
}

class Triangle extends GeometricObject {
  double side1, side2, side3;

  Triangle({
    this.side1 = 1.0,
    this.side2 = 1.0,
    this.side3 = 1.0,
    String color = 'white',
    bool filled = false,
  }) : super(color: color, filled: filled);

  double getArea() {
    double s = getPerimeter() / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  @override
  String toString() {
    return 'Triangle: side1 = $side1, side2 = $side2, side3 = $side3';
  }
}

class Rectangle extends GeometricObject {
  double height, width;

  Rectangle({
    this.height = 1.0,
    this.width = 1.0,
    String color = 'white',
    bool filled = false,
  }) : super(color: color, filled: filled);

  double getArea() {
    return height * width;
  }

  double getPerimeter() {
    return 2 * (height + width);
  }

  @override
  String toString() {
    return 'Rectangle: height = $height, width = $width';
  }
}

abstract class Shape {
  double getArea();
}

class TriangleShape implements Shape {
  double side1, side2, side3;

  TriangleShape({
    this.side1 = 1.0,
    this.side2 = 1.0,
    this.side3 = 1.0,
  });

  @override
  double getArea() {
    double s = getPerimeter() / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  @override
  String toString() {
    return 'TriangleShape: side1 = $side1, side2 = $side2, side3 = $side3';
  }
}

class RectangleShape implements Shape {
  double height, width;

  RectangleShape({
    this.height = 1.0,
    this.width = 1.0,
  });

  @override
  double getArea() {
    return height * width;
  }

  double getPerimeter() {
    return 2 * (height + width);
  }

  @override
  String toString() {
    return 'RectangleShape: height = $height, width = $width';
  }
}

void main() {
  var geo1 = GeometricObject();
  var geo2 = GeometricObject(color: 'blue', filled: true);
  print(geo1);
  print(geo2);

  var triangle1 = Triangle();
  var triangle2 =
      Triangle(side1: 3.0, side2: 4.0, side3: 5.0, color: 'red', filled: true);
  print(triangle1);
  print('Area: ${triangle1.getArea()}');
  print('Perimeter: ${triangle1.getPerimeter()}');
  print(triangle2);
  print('Area: ${triangle2.getArea()}');
  print('Perimeter: ${triangle2.getPerimeter()}');

  var rectangle1 = Rectangle();
  var rectangle2 =
      Rectangle(height: 2.0, width: 3.0, color: 'green', filled: true);
  print(rectangle1);
  print('Area: ${rectangle1.getArea()}');
  print('Perimeter: ${rectangle1.getPerimeter()}');
  print(rectangle2);
  print('Area: ${rectangle2.getArea()}');
  print('Perimeter: ${rectangle2.getPerimeter()}');

  Shape shape1 = TriangleShape(side1: 3.0, side2: 4.0, side3: 5.0);
  Shape shape2 = RectangleShape(height: 2.0, width: 3.0);
  print(shape1);
  print('Area: ${shape1.getArea()}');
  print(shape2);
  print('Area: ${shape2.getArea()}');
}
