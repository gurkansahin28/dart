void main(){

    print("\n");
    print("=" * 35);
    print("'num' veri tipi 'int', 'double' gibi tüm sayıları kapsayan bir veri türüdür. \nAyrıca 'var' her türden sayı ve metin değerini tutabileceğimiz bir değer tutucusunu (değişkeni) kendiliğinden ayarlar.");
    print("\n");

    var generalCount = 10/3;
    print("\n");
    print("var generalCount = 10/3; -> $generalCount");
    print("\n");
    num numberInt = 7; print("num numberInt = 7; -> $numberInt");
    num numberDouble = 3.14; print("num numberDouble = 7; -> $numberDouble");
    print("\n");
    int integer1 = 9; print("int integer1 = 9; -> $integer1");
    int integer2 = 3; print("int integer2 = 9; -> $integer2");
    print("\${integer1*integer2} -> ${integer1*integer2}");
    print("\n");
    double double1 = 22/7; print("double double1 = 22/7; -> $double1");
    double double2 = 22.4; print("double double2 = 22.4; -> $double2");
    print("\n");
    double exponantial = 6.02e23; print("double exponantial = 6.02e23; -> $exponantial");

    String codeSample = """
        num numberInt = 7;
        num numberDouble = 3.14;
    """;
    print("\n");
    print(codeSample);

    print("\n");
    print(numberInt);
    print(numberDouble); 
    print("\n");

    print("numberInt: $numberInt");
    print("numberDouble: $numberDouble"); 
    print("\n");

    print("numberInt.toString() ile tip dönüşümü yapılan numberInt değişkeninin değeri : " + numberInt.toString());
    print("numberDouble.toString() ile tip dönüşümü yapılan numberDouble değişkeninin değeri: " + numberDouble.toString());
    print("\n");

    print("\$numberInt ile numberInt değişkeninin değeri: $numberInt");
    print("\$numberDouble ile numberDouble değişkeninin değeri: $numberDouble"); 

    print("\n");
    print("\${numberDouble+numberInt} ile satır içi işlemin (interpolation) sonucu: ${numberDouble+numberInt}"); 
}
