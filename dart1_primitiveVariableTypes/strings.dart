void main(){

 print("merhaba");

 String messageDoubleQuota = "merhaba çift tırnaklı dünya";
 String messageSingleQuota = 'merhaba tek tırnaklı dünya';
 String messageDoubleQuotaApostrophe = "Çift tırnaklı string içinde tek tırnaklı 'merhaba' hoş mudur?";

  String message1 = '''
    \"merhaba\"
    \'Günaydın\'
''';

 String message2 = """Merhaba!
    hello!
    Nihao!
    12345
    <html>
    {<>?*!}
    </html>
    """;
 String message3 = '''
-----------------
 print(\"merhaba\")\;
 String message = \"\"\"Merhaba!
    hello!
    Nihao!
    12345
    <html>
    {<>?*!}
    </html>
    \"\"\"\;
-----------------
''';

 print(messageDoubleQuota);
 print(messageSingleQuota);
 print(message1);
 print(message2);
 print(message3);
 print(messageDoubleQuotaApostrophe);

print("\n");
String ozne="Kodlamacı";
String tumlec="bilgisayarında, kendisi için";
String nesne="bir dünya";
String yuklem="kodluyordu.";

print(ozne + " " + tumlec + " " + nesne + " " + yuklem);
print("\n");
}
