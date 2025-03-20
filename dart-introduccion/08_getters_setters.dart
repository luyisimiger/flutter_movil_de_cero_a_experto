void main() {
  final sq = Square(side: 15);
  print("area: ${sq.calcArea()}");
  
  //sq.side = -20;
  sq.side = 25;
  
  print("area: ${sq.area}");
  
}

class Square {
  double _side;

  Square({required double side}) : _side = side;

  double calcArea() {
    return _side * _side;
  }

  double get area {
    return calcArea();
  }

  set side(double value) {
    print("setting new val $value");
    if (value < 0) throw "value must be >= 0";

    _side = value;
  }
}
