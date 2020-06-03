void main(){

  num number = 99.1;

  print("number -> $number"); //number -> 99.1
  print("number.ceil() -> ${number.ceil()}"); //number.ceil() -> 100
  print("number.ceilToDouble()-> ${number.ceilToDouble()}"); //number.ceilToDouble()-> 100.0
  print("---------------------------------------------");
  print("number.floor() -> ${number.floor()}"); //number.floor() -> 99
  print("number.floorToDouble() -> ${number.floorToDouble()}"); //number.floorToDouble() -> 99.0
  print("---------------------------------------------");
  print("number.round() -> ${number.round()}"); //number.round() -> 99
  print("number.toDouble() -> ${number.toDouble()}"); //number.toDouble() -> 99.1
  print("number.roundToDouble() -> ${number.roundToDouble()}"); //number.roundToDouble() -> 99.0
  print("---------------------------------------------");
  print("number.toInt() -> ${number.toInt()}"); //number.toInt() -> 99
  print("number.toString() -> ${number.toString()}"); //number.toString() -> 99.1
  print("---------------------------------------------");
  print("number.isNegative -> ${number.isNegative}");//number.isNegative -> false
  print("---------------------------------------------");
}