void main(){
  String message = "Tasarlıyorum öyleyse varım";

  print("message.length -> ${message.length}");
  print("message.codeUnitAt(0) -> ${message.codeUnitAt(0)}");
  print("message.codeUnits -> ${message.codeUnits}");
  print("message[0] -> ${message[0]}");
  print("1 ---------------------------------------------");
  print("message.substring(2) -> ${message.substring(2)}");
  print("message.substring(2,5) -> ${message.substring(2,5)}");
  print("message.replaceAll(\"öyleyse\", \"o halde\") -> ${message.replaceAll("öyleyse", "o halde")}");
  print("2 ---------------------------------------------");
  print("message -> $message");
  print("message.split(\" \") -> ${message.split(" ")}");
  print("message.contains(\'ö\') -> ${message.contains('ö')}");
  print("message.indexOf(\"sar\") -> ${message.indexOf("sar")}");
  print("message.toLowerCase() -> ${message.toLowerCase()}");
  print("message.toUpperCase() -> ${message.toUpperCase()}");
  print("3 ---------------------------------------------");
  message = " Tasarlıyorum öyleyse varım  ";
  print("message.trim() -> ${message.trim()}");
  print("message.length -> ${message.length}");
  print("message.endsWith(\" \") -> ${message.endsWith(" ")}");
  print("message.lastIndexOf(\"m\") -> ${message.lastIndexOf("m")}");
  print("message.compareTo(\"öyleyse\") -> ${message.compareTo("öyleyse")}");
  print("4 ---------------------------------------------");
  message = "";
  print("message.isEmpty -> ${message.isEmpty}");
  print("5 ---------------------------------------------");
  message = "Varım ki tasarlıyorum.";
  print("message -> $message");
  print("6 ---------------------------------------------");
  print("message.replaceFirst(\"Varım ki\", \"Düşünüyorum ki\") -> ${message.replaceFirst("Varım ki", "Düşünüyorum ki")}");
  print("message.replaceFirst(\"Varım ki\", \"\'Düşünüyorum\' ki\").toUpperCase() -> ${message.replaceFirst("Varım ki", "\'Düşünüyorum\' ki").toUpperCase()}");
  print("7 ---------------------------------------------");
}

/*
message.length -> 26
message.codeUnitAt(0) -> 84
message.codeUnits -> [84, 97, 115, 97, 114, 108, 305, 121, 111, 114, 117, 109, 32, 246, 121, 108, 101, 121, 115, 101, 32, 118, 97, 114, 305, 109]
message[0] -> T
1 ---------------------------------------------
message.substring(2) -> sarlıyorum öyleyse varım
message.substring(2,5) -> sar
message.replaceAll("öyleyse", "o halde") -> Tasarlıyorum o halde varım
2 ---------------------------------------------
message -> Tasarlıyorum öyleyse varım
message.split(" ") -> [Tasarlıyorum, öyleyse, varım]
message.contains('ö') -> true
message.indexOf("sar") -> 2
message.toLowerCase() -> tasarlıyorum öyleyse varım
message.toUpperCase() -> TASARLIYORUM ÖYLEYSE VARIM
3 ---------------------------------------------
message.trim() -> Tasarlıyorum öyleyse varım
message.length -> 29
message.endsWith(" ") -> true
message.lastIndexOf("m") -> 26
message.compareTo("öyleyse") -> -1
4 ---------------------------------------------
message.isEmpty -> true
5 ---------------------------------------------
message -> Varım ki tasarlıyorum.
6 ---------------------------------------------
message.replaceFirst("Varım ki", "Düşünüyorum ki") -> Düşünüyorum ki tasarlıyorum.
message.replaceFirst("Varım ki", "'Düşünüyorum' ki").toUpperCase() -> 'DÜŞÜNÜYORUM' KI TASARLIYORUM.
7 ---------------------------------------------
Exited
 */