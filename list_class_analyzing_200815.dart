/**
 * DART'TA LIST SINIFININ İNCELENMESİ
 * LIST CLASS ANALYZING 
 * ilk başlangıç        : 2020/07/29
 * ikici kez ele alınış : 2020/08/15 00:49
 * bitiriliş            : 2020/08/20 21:34
 * GÜRKAN ŞAHİN
 * email: gurkansahin28@gmail.com
 * instagram: @gurkansahin16
 * instagram: @gurkansahin28
 * twitter: gurkan_sahin69
 * DartProgramming telegram channel: https://t.me/dart_programming0
 * FlutterProgramming telegram channel: https://t.me/flutterProgramming0
 * 
 * kaynaklar: 
 * https://medium.com/flutter-community/useful-list-methods-in-dart-6e173cac803d 2020/08/03
 * https://api.dart.dev/stable/2.8.4/dart-core/List/List.html 
 * https://codingwithjoe.com/dart-fundamentals-working-with-lists/ 
 * https://bezkoder.com/dart-list/ 
 * https://dart.dev/codelabs/iterables
 */
/** 
 * Symbol Meaning
 * T      Type
 * E      Element
 * f      function
 * K, V   Key, Value
*/
/***************************************************/
/*             LIST                                */
/***************************************************/
// Listeler, belli ya da belirlenebilir uzunluğa sahip nesnelerin
// bir kolleksiyonudur.

/* Tipi 'dynamic' olarak tanımlandığında 'String'den
  bir veritabanınıdan veri çeken fonksiyona kadar
  her türden nesneyi (Object) elemanı olarak
  dizinleyebilen (indexing) listeler, bu özellikleri ile
  belki de Dart'ta üzerinde önemle durulmayı gerekli 
  kılan _tanımları sınıf olarak belirtilmiş_ nesnelerdir.
  Dart'a 'Map', 'Set' ve 'Queu' gibi 'collection'lar da
  bünyelerinde element bulundurma açılarından
  listelerle benzerlik gösterir.
  
  Flutter'ın belkemiği Dart ise, Dart'ınki de 'List' 
  sınıfı olduğu rahatlıkla dile getirilebilir.

  Buradaki herbir kod öbeği birimseldir. Kolaylıkla
  kopyalanıp bir başka dökümanda kullanılabilir.

  Bu dökümanını birincil hedefi Türkçe içerik geliştirmek olup 
  ileriye yönelik üzerinde daha fazla 
  çalışmak için de üretildi. Dolayısıyla eksileri de 
  fazla olacaktır.

  Herhangi bir eleştiri ya da öneri için yukarıdaki
  bağlantılar için irtibata geçilebilir.
  */

/****************************************************
    İÇİNDEKİLER
    1. Değişik liste tanımlama örnekleri
      a) deyimsel betimleme ile (using literal description)
      b) kurucu kullanarak (using constructor)
    2. Listelerin kurucuları (constructors)
    3. Listelerin özellikleri (properties)
    4. Listelerin yöntemleri (methods)
    5. Listelerin işleçleri (operators)
    6. Listelerin statik yöntemleri (static methods)
  **************************************************/
void main(List<String> args) {
  /*************************************************
    1. Değişik liste tanımlama örnekleri
  *************************************************/
  print("1. DEĞİŞİK LİSTE TANIMLAMA ÖRNEKLERİ");
  // a) deyimsel betimleme ile (using literal description)
  // -----------------------------------------------------
  print("\nDEYİMSEL BETİMLEME (LITERAL DESCRIPTION) KULLANARAK LIST TANIMLAMA");
  var tanimiEnKolayOlani = [];
  dynamic tipiDinamikOlani = [];
  List tipiListOlani = [];
  var tipiAtamadaBelirtilmisOlani = <int>[];
  List<int> tipiBastaBildirilmisOlani = [];
  List<int> tamBildirimliOlani = <int>[];

  // --- tanimiEnKolayOlani
  print("\n--- Tanımlaması en kolay olanı ----------");
  tanimiEnKolayOlani.addAll(['marul', 'turp', 7.3, null, false]);
  print(tanimiEnKolayOlani);

  // --- tipiDinamikOlani
  print("\n--- Tipi dinamik olanı ------------------");
  tipiDinamikOlani.length = 5;
  tipiDinamikOlani[0] = 7854;
  tipiDinamikOlani[1] = true;
  tipiDinamikOlani[2] = 3.14;
  tipiDinamikOlani[3] = 'Selam';
  print(tipiDinamikOlani);

  // --- tipiListOlani
  print("\n--- Tipi list olanı ---------------------");
  tipiListOlani.add('durak');
  tipiListOlani.addAll(['34', 1, null, 'Samsun']);
  print(tipiListOlani);

  // --- tipiAtamadaBelirtilmisOlani
  print("\n--- Tipi atamada belirtilmiş olanı -------");
  tipiAtamadaBelirtilmisOlani.add(3);
  tipiAtamadaBelirtilmisOlani.addAll([9, 11, -1, 2, 99]);
  tipiAtamadaBelirtilmisOlani.sort();
  print(tipiAtamadaBelirtilmisOlani);

  // --- tipiBastaBildirilmisOlani
  print("\n--- Tipi başta bildirilmiş olanı ---------");
  tipiBastaBildirilmisOlani.addAll([6, 4, 1, 0, 9]);
  print(tipiBastaBildirilmisOlani);

  // --- tamBildirimliOlani
  print("\n--- Tam bildirilmiş olanı ----------------");
  tamBildirimliOlani.addAll([78, 549, 12, 5401]);
  print(tamBildirimliOlani);

  // b) List kurucusunu kullanarak (using List constructor)
  // -----------------------------------------------------
  print("\nLIST KURUCUSU (CONSTRUCTOR) KULLANARAK LIST TANIMLAMA");
  var kurucusuKolaycaOlani = List();
  List<String> tipiStringOlani = List<String>();
  List elemanSayisiSabitOlani = List(3);
  List degisgenElemanliOlani = List();
  List uzunluguOzellikAtamaliOlani = List()..length = 7;

  // --- kurucusuKolaycaOlani
  print("\n--- Kurucusu kolay olanı ----------------");
  kurucusuKolaycaOlani.add('taş');
  kurucusuKolaycaOlani.add(45);
  kurucusuKolaycaOlani.addAll(['kağıt', 1, 'çivi', 1, 3.14, null]);
  print(kurucusuKolaycaOlani);

  // --- tipiStringOlani
  print("\n--- Tipi String olanı -------------------");
  tipiStringOlani.addAll(['fıstık', 'nohut', 'ceviz']);
  print(tipiStringOlani);
  tipiStringOlani.add('fındık');
  print(tipiStringOlani);

  // --- elemanSayisiSabitOlani
  print("\n--- Eleman sayısı sabit olanı -----------");
  print(elemanSayisiSabitOlani.length);
  elemanSayisiSabitOlani[0] = 'anten';
  elemanSayisiSabitOlani[1] = null;
  elemanSayisiSabitOlani[2] = 3.5;
  print(elemanSayisiSabitOlani);

  // --- degisgenElemanliOlani
  print("\n--- Değişgen elemanlı olanı --------------");
  degisgenElemanliOlani.add('köfte');
  degisgenElemanliOlani.insertAll(1, ['piyaz', 'şalgam suyu', 'çatal', 1.5]);
  print(degisgenElemanliOlani);

  // --- uzunluguOzellikAtamaliOlani
  print("\n--- uzunluguOzellikAtamaliOlani ----------");
  uzunluguOzellikAtamaliOlani.add('bak bana en sondayım!');
  print(uzunluguOzellikAtamaliOlani);

  // *** SABİT ELEMAN SAYILI LİSTE TANIMLARI **********
  // List(int length) kurucusu ile tanımlanmış listeler
  var elemanSayisiSabitListe1 = List(5);
  elemanSayisiSabitListe1[0] = true;
  // ---
  List elemanSayisiSabitListe2 = List(3);
  elemanSayisiSabitListe2[2] = 'Delidumrul';
  // ---
  List<String> elemanSayisiSabitListe3 = List(7);
  elemanSayisiSabitListe3[5] = 'bilgi güçtür.';
  // ---
  List<int> elemanSayisiSabitListe4 = List<int>(9);
  elemanSayisiSabitListe4[7] = 1072;

  // *** DEĞİŞKEN ELEMAN SAYILI LİSTE TANIMLARI ********
  // List() kurucusu ile tanımlanmış listeler
  var elemanlariDegiskenListe1 = List();
  elemanlariDegiskenListe1.addAll([null, 'hi', 3.14, true]);

  List elemanlariDegiskenListe2 = List();
  elemanlariDegiskenListe2.add('merhaba');

  List elemanlariDegiskenListe3 = List<String>();
  elemanlariDegiskenListe3.add('Nihao');

  List<double> elemanlariDegiskenListe4 = List<double>();
  elemanlariDegiskenListe4.addAll([3.14, 22.4, 22 / 7]);

  dynamic elemanlariDegiskenListe5 = List<dynamic>();
  elemanlariDegiskenListe5.length = 3;
  elemanlariDegiskenListe5[0] = 'merhaba';
  elemanlariDegiskenListe5[1] = 6.02;
  elemanlariDegiskenListe5[2] = false;

  // literal description yoluyla tanımlanmış listeler
  // bu tip tanımlamada '[]' (index operatörü) kullanılır
  var dinamikElemanliListe1 = []; // en yalın tanım
  dinamikElemanliListe1.add(657);

  List dinamikElemanliListe2 = [];
  dinamikElemanliListe2.length = 5;

  var dinamikElemanliListe3 = <String>[];
  dinamikElemanliListe3.length = 3;

  List<String> dinamikElemanliListe4 = <String>[];
  dinamikElemanliListe4.add('Gesi bağlarında dolanıyorum.');

  /*************************************************
    2. Listelerin kurucuları (constructors)
  *************************************************/
  /*****************************************************
    CONSTRUCTORS
    bir listenin tanımlanmasında kullanılan kurucular:
    List, filled, from, generate, of, unmodifiable
  ******************************************************/
  print("\n_______________ CONSTRUCTORS _______________");
  print("2. LISTELERİN KURUCULARI (CONSTRUCTORS)");
  // *** LIST CONSTRUCTOR ****************
  // --- 'List()' kurucusu
  // external factory List([int? length]);
  print('\n--- "List()" kurucusu ile dinamik liste tanımlanması ---');
  var kurucusuListOlan = List();
  kurucusuListOlan.add('Ankara');
  kurucusuListOlan.addAll([06, 'Başkent', true, null]);
  print(kurucusuListOlan);

  print('\n--- "List()" kurucusu ile sabit liste tanımlanması ---');
  var kurucusuUzunlukluListOlan = List(3);
  kurucusuUzunlukluListOlan[0] = 3.75;
  kurucusuUzunlukluListOlan[1] = 'günaydı';
  kurucusuUzunlukluListOlan[2] = 'naber';
  print(kurucusuUzunlukluListOlan);

  // *** FILLED CONSTRUCTOR **************
  // --- 'filled()' kurucusu
  print("\n*** FILLED CONSTRUCTOR **************");
  print('\n--- "filled()" kurucusu ile liste tanımlanması -------');
  // external factory List.filled(int length, E fill, {bool growable = false});
  // List.filled(int elemanSayisi, <T> eleman,  {bool growable = false});
  // Açıklama: 'length' ile belirtilen uzunluk kadar 'fill' ile
  // belirtilen elemanı yineleyerek doldurur.
  // Elementler birbirlerinin aynısıdırlar.
  var doldurmacaListeTanimi = List.filled(3, 'müdür', growable: true);
  print(doldurmacaListeTanimi);
  List<int> growableList = List<int>.filled(500, 0, growable: true);
  print(growableList);
  new List<int>.filled(3, 0, growable: true);
  var shared = new List.filled(3, []);
  print(shared);

  // *** FROM CONSTRUCTOR **************
  // --- 'from()' kurucusu
  print("\n*** FROM CONSTRUCTOR **************");
  print('\n--- "from()" kurucusu ile liste tanımlanması -------');
  // external factory List.from(Iterable elements, {bool growable = true});
  // List.from(digerListe)
  // başka bir listeden ya da iterable'dan liste yapabiliriz.
  var kaynakListe = ['takvim', null, 'saat', 0.5, 'şişe'];
  var baskasindanListe = List.from(kaynakListe);
  print(baskasindanListe);

  var kendiSatirindanSabitListe = List.from([4, 'hi', null], growable: false);
  print(kendiSatirindanSabitListe);
  // from() kurucusunun 'growable' adlandırılmış seçimlik parametresinin
  // değerli öntanımlı (default) olarak 'true' dır.
  var kendiSatirindanDegisgenListe = List.from(['soba', 3.1, 'TR']);
  kendiSatirindanDegisgenListe.add('liste sonuna bir üye daha!');
  print(kendiSatirindanDegisgenListe);

  // *** GENERATE CONSTRUCTOR **********
  // --- 'generate()' kurucusu
  print("\n*** GENERATE CONSTRUCTOR **************");
  print('\n--- "generate()" kurucusu ile liste tanımlanması -------');
  // external factory List.generate(int length, E generator(int index),{bool growable = true});
  var unique = new List.generate(3, (_) => []);
  unique[0].add(499);
  print(unique);
  List<int>.generate(3, (int index) => index * index);
  // by default, growable: true
  var myList = List.generate(5, (index) => index * 2);
  print(myList);
  //---------------------
  // 10'a kadarki tamsayıların kareleri
  var uretilenListe = List.generate(10, (int i) => i * i, growable: true);
  print(uretilenListe);

  // Tek sayıların serisi
  var uretilenTekSayilar = List.generate(20, (int i) => 2 * i + 1);
  print(uretilenTekSayilar);

  // Çift sayıların serisi
  var uretilenCiftSayilar = List.generate(20, (i) => 2 * i);
  print(uretilenCiftSayilar);
  // Anonim fonksiyonun sayesinde istenilen türde bir dizi elde edilebiliyor
  //-----------------------

  // *** OF CONSTRUCTOR ***************
  // --- 'of()' kurucusu
  print("\n*** OF CONSTRUCTOR ***************");
  print('\n--- "of()" kurucusu ile liste tanımlanması -------');
  // external factory List.of(Iterable<E> elements, {bool growable = true});
  var kimiEvrenselSabitler = [3.14, 2.6, 6.67];
  var ofList = List.of(kimiEvrenselSabitler);
  print(ofList);

  // *** UNMODIFIABLE CONSTRUCTOR ******
  // --- 'unmodifiable()' kurucusu
  print("\n*** UNMODIFIABLE CONSTRUCTOR ******");
  print('\n--- "unmodifiable()" kurucusu ile liste tanımlanması ---');
  // external factory List.unmodifiable(Iterable elements);
  var duzenlenemeyenListe = List.unmodifiable(['pi', 'singularity', 'mole']);
  print(duzenlenemeyenListe);
  try {
    // tamamen sabit olan listeye eleman eklemek hata verdirecek
    duzenlenemeyenListe.add('dirac');
  } catch (e) {
    print("Desteklenmeyen işlem: düzenlemeye kapalı listeye ekleme yapılamaz:\n"
        "${e.toString()}");
  }

  /*************************************************
    3. Listelerin özellikleri (properties)
  *************************************************/
  /*****************************************************
    PROPERTIES
    tanımlanmış bir listenin özellikleri:
    first, last, length, reversed, hashCode, isEmpty, 
    isNotEmpty, iterator, runtimeType, single
  ******************************************************/
  print("\n_______________ PROPERTIES _______________");
  print("\n3. LISTELERİN ÖZELLİKLERİ (PROPERTIES)");

  // *** FIRST PROPERTY **************************
  // --- 'first' özelliği
  print("\n*** FIRST PROPERTY **************************");
  print(
      '\n--- bir listenin "first" özelliği ile ilk üyesinin elde edilmesi ---');
  var halaycilar = ['halaybaşı Halo', 'çevik Rıdvan', 'melek Meral'];
  print("Halay çekenlerin başı 'first' ile: ${halaycilar.first}");
  print("Halay çekenlerin başı 'elementAt(0)' ile: ${halaycilar.elementAt(0)}");
  print("Halay çekenlerin başı '[0]' ile: ${halaycilar[0]}");

  // --- iterable ile '[]' işleci kullanılamıyor
  Iterable iterable = ['salad', 'popcorn', 'toast'];
  print('iterable\'ın ilk elementi \'first\' ile:  ${iterable.first}');
  print(
      "iterable'ın 0. elementi \'elementAt(0)\' ile:   ${iterable.elementAt(0)}");
  // print(iterable[0]); // [] işleci iterable için tanımlı değil

  // *** LAST PROPERTY ***************************
  // --- 'last' özelliği
  print("\n*** LAST PROPERTY ***************************");
  print(
      '\n--- bir listenin "last" özelliği ile son üyesinin elde edilmesi ---');
  var horoncular = ['tulumcu Tolga', 'hamsi Halil', 'kemençe Kenan'];
  print("horoncuların son üyesi 'last' ile : ${horoncular.last}");
  print("horoncuların son üyesi 'elementAt(length-1)' ile :"
      "${horoncular.elementAt(horoncular.length - 1)}");

  // *** LENGTH PROPERTY *************************
  // --- 'length' özelliği
  //  set length(int newLength);
  print("\n*** LENGTH PROPERTY *************************");
  print(
      '\n--- bir listenin "length" özelliği ile uzunluğunun elde edilmesi ---');
  var raftakiKitaplar = ['bilim', 'felsefe', 'sanat', 'dinler tarihi'];
  print("Okuma rafında kaç tane kitap var: ${raftakiKitaplar.length}");
  // aşağıda uzunluğu değişken olarak tanımlanmış 'feciListe'nin
  // 'length', 'fist', 'last' özellikleri ile
  // '[int]' işleci ve 'elementAt(int)' yöntemi bir arada kullanılıyor.
  var feciListe = [];
  feciListe.length = 3;
  feciListe.first = 'birinci eleman';
  feciListe.last = 'sonuncu eleman';
  feciListe[1] = 'ortayı ben kaptım ha';
  print(feciListe);

  var marketIhtiyaclari = List();
  marketIhtiyaclari.length = 5;
  print(marketIhtiyaclari.length);

  int bas = 0;
  int son = marketIhtiyaclari.length;
  marketIhtiyaclari
      .replaceRange(bas, son, ['un', 'tuz', 'yağ', 'turşu', 'yumurta']);
  print(marketIhtiyaclari);

  // *** REVERSED PROPERTY ****************
  // --- 'reversed' özelliği
  // Iterable<E> get reversed;
  print("\n*** REVERSED PROPERTY ****************");
  print('\n--- bir listeyi "reversed" özelliği ile sondan başlatabiliriz ---');
  var kalemlik = ['tükenmez', 'silgi', 'kuruboya', 'açacak'];
  print(kalemlik);
  print(kalemlik.reversed);

  // *** HASH CODE PROPERTY ****************
  // --- 'hashCode' özelliği
  // external int get hashCode;
  print("\n*** HASH CODE PROPERTY ****************");
  print('\n--- bir listenin "hashCode" özelliği ile bellekteki yerine ilişkin '
      'bilgi alabiliriz ---');
  var mobilyalar = ['tabure', 'sekmen', 'sedir'];
  print(mobilyalar.hashCode);
  print(mobilyalar[2].hashCode);

  // *** IS EMPTY PROPERTY *********************
  // --- 'isEmpty' özelliği
  // bool get isEmpty => !iterator.moveNext();
  print("\n*** IS EMPTY PROPERTY *********************");
  print('\n--- bir listenin "isEmpty" özelliği ile '
      'boş olup olmadığını öğrenebiliriz ---');
  var bosListe = [];
  print("Liste boş mu: ${bosListe.isEmpty}");

  // *** IS NOT EMPTY PROPERTY *****************
  // --- 'isNotEmpty' özelliği
  // bool get isNotEmpty => !isEmpty;
  print("\n*** IS NOT EMPTY PROPERTY *********************");
  print('\n--- bir listenin "isNotEmpty" özelliği ile '
      'boş olup olmadığını öğrenebiliriz ---');
  var doluListe = ['taş', 'kağıt', 'makas'];
  print('Liste dolu mu : ${doluListe.isNotEmpty}');

  // *** ITERATOR PROPERTY *********************
  // --- 'iterator' özelliği
  //   Iterator<E> get iterator;
  print("\n*** ITERATOR PROPERTY *********************");
  print('\n--- bir listenin "iterator" özelliği ile '
      'elementleri listeleyebiliriz. ---');
  var aletKutusu = ['pense', 'kargaburun', 'tornavida'];
  //get iterator to the list
  var aletKutusuIter = aletKutusu.iterator;
  //iterate over the list
  while (aletKutusuIter.moveNext()) {
    print(aletKutusuIter.current);
  }

  // *** RUNTIME TYPE PROPERTY *****************
  // --- 'runtimeType' özelliği
  // external Type get runtimeType;
  print("\n*** RUNTIME TYPE PROPERTY *****************");
  print('\n--- bir listenin "runtimeType" özelliği ile '
      'liste elementlerinin çalıma zamanı tiplerini öğrenebiliriz. ---');
  var calismaZamaniTipleri = [
    'Merhaba',
    3.14,
    1923,
    ['elma', 'armut'],
    null,
    {'masa': 'table', 'kitap': 'book'},
    {'yay', 'ok', 'hedef'}
  ];
  print(calismaZamaniTipleri[0].runtimeType);
  print(calismaZamaniTipleri[1].runtimeType);
  print(calismaZamaniTipleri[2].runtimeType);
  print(calismaZamaniTipleri[3].runtimeType);
  print(calismaZamaniTipleri[4].runtimeType);
  print(calismaZamaniTipleri[5].runtimeType);
  print(calismaZamaniTipleri[6].runtimeType);

  calismaZamaniTipleri.forEach((element) {
    print(element.runtimeType);
  });

  // *** SINGLE PROPERTY ***********************
  // --- 'single' özelliği
  // Listenin tek bir elemanı varsa bu elemanı verir.
  // Eğer listenin birden fazla elemanı varsa hata verir.
  print("\n*** SINGLE PROPERTY ***********************");
  print('\n--- bir listenin "single" özelliği ile '
      'üyesinin tek olup olmadığını ve bu üyesini öğrenebiliriz. ---');
  var yoksulListe = ['ekmek'];
  print("${yoksulListe.single}");

  /*************************************************
    4. Listelerin yöntemleri (methods)
  *************************************************/

  /*********************************************************
    METHODS
    add, addAll, asMap, cast, clear, fillRange, getRange, indexOf,
    indexWhere, insert, insertAll, lastIndexOf, lastIndexWhere,
    remove, removeAt, removeLast, removeRange, removeWhere,
    replaceRange, retainWhere, setAll, setRange, shuffle,
    sort, sublist, any, contains, elementAt, every, expand,
    firstWhere, fold, follwedBy, forEach, join, lastWhere, map,
    noSuchMethod, reduce, singleWhere, skip, skipWhile, take,
    takeWhile, toList, toSet, toString, where, whereType
  *********************************************************/

  // *** ADD METHOD ******************************
  // --- 'add' yöntemi
  // void add(E value);
  print("\n_______________ METHODS _______________");
  print("\n4. LISTELERİN YÖNTEMLERİ (METHODS)");
  print("\n*** ADD METHOD ******************************");
  print('\n--- "add" yöntemi ile '
      'bir listenin sonuna tek bir üye ekleyebiliriz. ---');
  List<num> baziEvrenselSabitler = [3.14, 6.67, 1.054];
  baziEvrenselSabitler.add(299);
  print(baziEvrenselSabitler);

  // *** ADD ALL METHOD ***************************
  // --- 'addAll' yöntemi
  // void addAll(Iterable<E> iterable);
  print("\n*** ADD ALL METHOD ***************************");
  print('\n--- "addAll" yöntemi ile '
      'bir listenin sonuna bir çok üye ekleyebiliriz. ---');
  var bilgisayarKasasi = ['işlemci', 'anakart', 'bellek'];
  var yeniSiparis = ['ekran kartı', 'SSD', 'fan'];
  bilgisayarKasasi.addAll(yeniSiparis);
  print(bilgisayarKasasi);

  // *** AS MAP METHOD ***************************
  // --- 'asMap' yöntemi
  // Map<int, E> asMap();
  print("\n*** AS MAP METHOD ***************************");
  print('\n--- "asMap" yöntemi ile bir listeyi index numaralarıyla'
      ' üyelerinin eşleştiği bir Map\'e çevirebiliriz. ---');
  var elAletleri = ['keser', 'silikon', 'havya', 'avometre'];
  Map<int, String> mapListesi = elAletleri.asMap();
  print("${mapListesi[0] + mapListesi[1]}");
  print("${mapListesi.keys.toList()}");
  print("${mapListesi.values.toList()}");

  List<String> sportList = ['cricket', 'football', 'tennis', 'baseball'];
  Map<int, String> map = sportList.asMap();
  print(map);

  // *** CAST METHOD ******************************
  // --- 'cast' yöntemi
  // List<R> cast<R>();
  print("\n*** CAST METHOD ******************************");
  print('\n--- "cast" yöntemi ile bir listeyi . ---');
  var liste = [1, 2, 3];
  var liste2 = liste.cast();
  print(liste2);

  // *** CLEAR METHOD ****************************
  // --- 'clear' yöntemi
  // void clear();
  print("\n*** CLEAR METHOD ****************************");
  print(
      '\n--- "clear" yöntemi ile bir listenin tüm ögelerini silebiliriz. ---');
  var yapilacaklar = ['masayı sil', 'yemek yap', 'evi süpür'];
  yapilacaklar.clear();
  print("Liste boşaltıldı mı : ${yapilacaklar.isEmpty}");

  // *** FILL RANGE METHOD ***********************
  // --- 'fillRange' yöntemi
  // void fillRange(int start, int end, [E? fillValue]);
  // 'start' ile başlangıç 'end' ile de bitiş indexi belirlenen bir listede
  // dolgu nesnesi olarak verile 'fillValue'yu eski elemanların yerine
  // yineleyerek yazar. Öyleki 'fillRange' al bu 'fillValue'yu
  // 'start' ve 'end' olarak belirtilen aralıktaki her yere yaz demektir.
  print("\n*** FILL RANGE METHOD ***********************");
  print('\n--- "fillRange" yöntemi ile bir listenin '
      'belirtilen aralığına eleman eklenebilir. ---');
  var araligiDoldurulacakListe = [
    'kavşak',
    'yol',
    'ışıklandırma',
    'refüj',
    'banket',
    'araba'
  ];
  print(araligiDoldurulacakListe);
  araligiDoldurulacakListe.fillRange(1, 5, 'polis');
  print(araligiDoldurulacakListe);

  // *** GET RANGE METHOD *************************
  // --- 'getRange' yöntemi
  // Iterable<E> getRange(int start, int end);
  // ilgili listeden başı ve sonu belirtilen konumdan
  // bir liste dilimi çıkarır.
  // Bu yöntem, belirtilen listedeki ile
  // aynı sırada belirtilen [başlangıç] ile
  // [bitiş] aralığındaki öğeleri döndürür.
  // Başlangıç ​​öğesinin kapsayıcı, ancak son öğenin de kapsanmadığını unutmayın.
  print("\n*** GET RANGE METHOD *************************");
  print('\n--- "getRange" yöntemi ile bir listenin belirtilen aralığından '
      'liste dilimi çıkarılabilir . ---');
  var araligiAlinacakListe = [
    'şöbiyet',
    'baklava',
    'vezir parmağı',
    'dilber dudağı',
    'bülbül yuvası',
    'muhallebi',
    'güllaç'
  ];
  print(araligiAlinacakListe);
  var alinanAralik = araligiAlinacakListe.getRange(2, 5);
  print(alinanAralik);
  var tamSayilar = [0, 'bir', 'iki', 'üç', 'dört', 'five'];
  tamSayilar[3] = 3;
  var aralik = tamSayilar.getRange(1, 3).toList();
  print(aralik);

  // *** INDEX OF METHOD ***************************
  // --- 'indexOf' yöntemi
  // int indexOf(E element, [int start = 0]);
  // listeden seçtiğimiz elemanın index (dizin) numarasını verir.
  // listede bulunmayan bir elemanın dizin numarası aranırsa '-1' yani 'yok' döner.
  // 'start' ile hangi index'ten başlayarak arama yapacağı belirlenebilir.
  // 'dafault' start değeri '0'dir yani listenin en başı.
  print("\n*** INDEX OF METHOD ***************************");
  print('\n--- "indexOf" yöntemi ile bir listenin '
      'belirtilen ögesinin index numarasına erişebiliriz. ---');
  var kentler = ['samsun', 'adana', 'diyarbakır', 'ağrı', 'izmir', 'edirne'];
  print(kentler.indexOf('diyarbakır'));
  print(kentler.indexOf('diyarbakır', 3));

  // *** INDEX WHERE METHOD ***************************
  // --- 'indexWhere' yöntemi
  // int indexWhere(bool test(E element), [int start = 0]);
  print("\n*** INDEX WHERE METHOD ***************************");
  print(
      '\n--- "indexWhere" yöntemi ile bir listenin içinde elemanları üzerinde '
      'belirtilen koşullamanın nerede olduğunu bulabiliriz. ---');
  List<String> notalar = ['do', 're', 'mi', 're'];
  print(notalar.indexWhere((nota) => nota.startsWith('r')));
  print(notalar.indexWhere((nota) => nota.startsWith('r'), 2));
  print(notalar.indexWhere((nota) => nota.startsWith('k')));

  // *** INSERT METHOD *********************************
  // --- 'insert' yöntemi
  // void insert(int index, E element);
  // Eklendiği listede verilen index'e yine verilen elemanı yerleştirir.
  // Ancak eklendiği listenin 'growable' (genişleyebilir) olması koşuluyla.
  print("\n*** INSERT METHOD *********************************");
  print('\n--- "indexWhere" yöntemi ile bir listenin istediğimiz indexsine '
      'tek bir eleman yerleştirebiliriz.---');
  var evcilHayvanlar = ['kedi', 'köpek', 'hemstır'];
  evcilHayvanlar.insert(2, 'papağan');
  print(evcilHayvanlar);

  // *** INSERT ALL METHOD *****************************
  // --- 'insertAll' yöntemi
  // void insertAll(int index, Iterable<E> iterable);
  // Sonuna eklendiği genişleyebilir olan listenin 'index' ile
  // belirtilen konumuna başka bir listeyi araya sokarak o listeyi
  // genişletir.
  print("\n*** INSERT ALL METHOD *****************************");
  print('\n--- "insertAll" yöntemi ile bir listenin '
      'istediğimiz indexsinden başlayarak bir çok eleman yerleştirebiliriz.---');
  var terektekiBaharatlar = ['karabiber', 'pulbiber', 'kimyon'];
  var eklenecekBaharatlar = ['kişniş', 'köri', 'isot', 'sumak'];
  terektekiBaharatlar.insertAll(2, eklenecekBaharatlar);
  print(terektekiBaharatlar);

  // *** LAST INDEX OF METHOD **************************
  // --- 'lastIndexOf' property
  // int lastIndexOf(E element, [int start]);
  // 'start' parametresi verilmemişken ya da '0' iken listeyi
  // baştan sona tarar ve belirtilen 'element'in en son
  // yer aldığı indexi döndürür.
  // Eğer 'start' parametresi artı ve sıfırdan farklı ise
  // listeyi taramaya bu index değerinden başlayıp elemanın
  // son geçtiği yeri döndürür.
  print("\n*** LAST INDEX OF METHOD **************************");
  print('\n--- "lastIndexOf" yöntemi ile '
      'bir listenin elemanının son geçtiği indexi elde edebiliriz.---');
  var muzikNotalari = ['la', 'si', 'do', 'la', 'fa', 'sol', 'la'];
  print(muzikNotalari.lastIndexOf('la'));
  print(muzikNotalari.lastIndexOf('la', 4));
  print(muzikNotalari.lastIndexOf('mi'));

  // *** LAST INDEX WHERE METHOD ***********************
  // --- 'lastIndexWhere' yöntemi
  // int lastIndexWhere(bool test(E element), [int start]);
  print("\n*** LAST INDEX WHERE METHOD ***********************");
  print('\n--- "lastIndexWhere" yöntemi '
      'ile belirlenen koşulu sağlayan elemanın son geçtiği indexi verir.---');
  List<String> notes2 = ['do', 're', 'mi', 're'];
  print(notes2.lastIndexWhere((note) => note.startsWith('r')));
  print(notes2.lastIndexWhere((note) => note.startsWith('r'), 2));
  print(notes2.lastIndexWhere((note) => note.startsWith('k')));

  // *** REMOVE METHOD *********************************
  // --- 'remove' yöntemi
  // bool remove(Object value);
  print("\n*** REMOVE METHOD *********************************");
  print('\n--- "remove" yöntemi ile '
      'verilen liste ögesini listeden çıkarabiliriz.---');
  List<String> parts = ['head', 'shoulders', 'knees', 'toes'];
  print(parts.remove('head'));
  print(parts.join(', '));
  bool silindiMi = parts.remove('knees');
  print(silindiMi);

  // *** REMOVE AT METHOD ******************************
  // E removeAt(int index);
  print("\n*** REMOVE AT METHOD ******************************");
  print('\n--- "removeAt" yöntemi ile '
      'verilen index numarasındaki üyeyi listeden çıkarabiliriz.---');
  var buzDolabi = ['ıspanak', 'zeytin', 'çürük yumurta', 'peynir'];
  print(buzDolabi.removeAt(2));
  print(buzDolabi);

  // *** REMOVE LAST METHOD ****************************
  // E removeLast();
  print("\n*** REMOVE LAST METHOD ****************************");
  print('\n--- "removeLast" yöntemi ile '
      'listetedeki son ögeyi listeden çıkarabiliriz.---');
  var koyunlar = ['akkoyun', 'karakoyun', 'aksi koyun', 'saf koyun'];
  print(koyunlar.removeLast());
  print(koyunlar);

  // *** REMOVE RANGE METHOD ***************************
  // void removeRange(int start, int end);
  print("\n*** REMOVE RANGE METHOD ***************************");
  print('\n--- "removeRange" yöntemi ile '
      'verilen belirtilen aralıktaki ögeleri listeden çıkarabiliriz.---');
  var dilimiSilinecekListe = [
    'limon',
    'tuz',
    'çürük elma',
    'çürük muz',
    'portakal'
  ];
  print(dilimiSilinecekListe);
  dilimiSilinecekListe.removeRange(2, 4);
  print(dilimiSilinecekListe);

  // *** REMOVE WHERE METHOD ***************************
  // void removeWhere(bool test(E element));
  print("\n*** REMOVE WHERE METHOD ***************************");
  print('\n--- "removeWhere" yöntemi ile '
      'belirtilen koşulu sağlayan ögeler listeden çıkarabiliriz.---');
  List<String> numbers = ['one', 'two', 'three', 'four'];
  numbers.removeWhere((item) => item.length == 3);
  numbers.join(', '); // 'three, four'
  print(numbers);
  var sayilik = [1, 2, 34, 65, 342, 455, 6958, 92135];
  print(sayilik);
  sayilik.removeWhere((element) => element.toString().length > 3);
  print(sayilik);

  // *** REPLACE RANGE METHOD **************************
  // --- 'replaceRange' yöntemi
  // void replaceRange(int start, int end, Iterable<E> replacement);
  // Bu yöntem, verilen listenin bazı öğelerini
  // yenileriyle değiştirmeye / güncellemeye yardımcı olur.
  // Başlangıç ​​ve bitiş aralığının, bu aralıkta güncellenecek değerle birlikte sağlanması gerekir.
  print("\n*** REPLACE RANGE METHOD **************************");
  print('\n--- "replaceRange" yöntemi ile '
      'belirtilen aralıktaki ögeler başka ögelerle yer değiştirebilir.---');
  List<int> list = [1, 2, 3, 4, 5];
  print(list);
  list.replaceRange(1, 4, [6, 7]);
  list.join(', '); // '1, 6, 7, 5'
  print(list);

  var rList = [0, 1, 2, 3, 4, 5, 6];
  rList.replaceRange(2, 3, [10]);
  print('$rList'); // [0, 1, 10, 3, 4, 5, 6]

  // *** RETAIN WHERE METHOD ***************************
  // --- 'retainWhere' yöntemi
  // void retainWhere(bool test(E element));
  // koşul sınamasından geçemeyenleri kaldırır
  print("\n*** RETAIN WHERE METHOD ***************************");
  print('\n--- "retainWhere" yöntemi ile '
      'belirtilen koşul sınamasından geçemeyen ögeleri kaldırabiliriz.---');
  List<String> sayilar = ['bir', 'iki', 'üç', 'dört', 'beş'];
  print(sayilar);
  sayilar.retainWhere((item) => item.length == 3);
  sayilar.join(', '); // 'one, two'
  print(sayilar);

  // *** SET ALL METHOD ********************************
  // --- 'setAll' yöntemi
  // void setAll(int index, Iterable<E> iterable);
  print("\n*** SET ALL METHOD ********************************");
  print('\n--- "setAll" yöntemi ile verilen indexten başlayarak '
      'yeni liste ögelerini eskisinin üzerine yazabiliriz.---');
  List<String> harfler = ['a', 'b', 'c'];
  print(harfler);
  harfler.setAll(1, ['bee', 'sea']);
  harfler.join(', '); // 'a, bee, sea'
  print(harfler);

  // *** SET RANGE METHOD ******************************
  // --- 'setRange' yöntemi
  // void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]);
  print("\n*** SET RANGE METHOD ******************************");
  print('\n--- "setRange" yöntemi ile verilen aralıktaki '
      'eski liste ögelerinin üstüne yenilerini yazabiliriz.---');
  List<int> list1 = [1, 2, 3, 4];
  List<int> list2 = [5, 6, 7, 8, 9];
  // Copies the 4th and 5th items in list2 as the 2nd and 3rd items
  // of list1.
  list1.setRange(1, 3, list2, 3);
  list1.join(', '); // '1, 8, 9, 4'
  print(list1);

  // *** SHUFFLE METHOD ********************************
  // 'suffle' yöntemi
  // void shuffle([Random random]);
  // Bu yöntem, verilen listedeki öğelerin sırasını rastgele yeniden düzenler.
  print("\n*** SHUFFLE METHOD ********************************");
  print('\n--- "suffle" yöntemi ile liste ögelerinin sırasını '
      'rastgele değiştirebiliriz.---');
  var zar = [1, 2, 3, 4, 5, 6];
  print(zar);
  zar.shuffle();
  print(zar);

  // *** SORT METHOD ***********************************
  // --- 'sort' yöntemi
  // void sort([int compare(E a, E b)]);
  print("\n*** SORT METHOD ***********************************");
  print('\n--- "sort" yöntemi ile liste ögelerinin sırasını '
      'belirtilen koşullamaya göre sıralayabiliriz.---');
  List<String> numbers2 = ['two', 'three', 'four'];
  // Sort from shortest to longest.
  numbers2.sort((a, b) => a.length.compareTo(b.length));
  print(numbers2); // [two, four, three]

  List<int> nums = [13, 2, -11];
  nums.sort();
  print(nums); // [-11, 2, 13]

  List<String> numbers3 = ['one', 'two', 'three', 'four'];
  numbers3.sort((a, b) => a.length.compareTo(b.length));
  print(numbers3); // [one, two, four, three] OR [two, one, four, three]

  // *** SUBLIST METHOD ********************************
  // --- 'sublist' yöntemi
  // List<E> sublist(int start, [int end]);
  // Bu yöntem, başlangıç ​​ve bitiş arasındaki dizinden öğeler içeren
  // yeni bir liste döndürür. Başlangıç ​​dahil olduğunda
  // son öğenin özel olduğunu unutmayın.
  // End parametresi sağlanmazsa, başlangıçtan listenin uzunluğuna kadar
  // tüm öğeleri döndürür.
  print("\n*** SUBLIST METHOD ********************************");
  print('\n--- "sublist" yöntemi ile başlangıcını belirttiğimiz uzunlukta '
      'bir alt liste çıkarabiliriz.---');
  var colors = ["red", "green", "blue", "orange", "pink"];
  print(colors.sublist(1, 3)); // [green, blue]
  print(colors.sublist(1)); // [green, blue, orange, pink]

  // *** ANY METHOD ************************************
  // --- 'any' yöntemi
  // 'any' metodu liste içindeki herhangi (any) bir elementin
  // belirtilen koşulu sağlayıp sağlamadığına bakar.
  // Koşul sağlandığında 'true', sağlanmadığında 'false' döndürür.
  // Bu yöntem, herhangi bir öğenin
  // koşulu karşılayıp karşılamadığına bağlı olarak bir boole döndürür.

  // Bu yinelenebilir öğenin herhangi bir öğesinin
  // testi karşılayıp karşılamadığını kontrol eder.
  // Yineleme sırasındaki her öğeyi kontrol eder ve bunlardan herhangi biri
  // test dönüşünü doğru yaparsa true değerini,
  // aksi halde false değerini döndürür.
  print("\n*** ANY METHOD ************************************");
  print('\n--- "any" yöntemi ile belirttiğimiz koşullamaya uygun '
      'herhangi bir liste ögesinin olup olmadığını öğrenebiliriz.---');
  var kirtasiye = ['kağıt', 'karton', 'makas', 'yapıştırıcı'];
  //kirtasiye.any((element) => false);
  print(kirtasiye.any((e) => e.contains('ataç'))); // false
  print(kirtasiye.any((e) => e.contains('makas'))); // true

  var sportsListing = ['cricket', 'tennis', 'football'];
  print(sportsListing.any((e) => e.contains('cricket'))); // true

  // *** CONTAINS METHOD ************************************
  // --- 'contains' yöntemi
  // bool contains(Object? element){...}
  // Liste belirtilen elemanı içeriyorsa 'true' döndürür.
  print("\n*** CONTAINS METHOD ************************************");
  print('\n--- "contain" yöntemi ile aradığımız ögenin '
      'listede var olup olmadığını öğrenebiliriz.---');
  var otoGaleri = ['reno', 'pejo', 'ford', 'fiat'];
  print(otoGaleri.contains('Devrim'));
  print(otoGaleri.contains('pejo'));

  // *** ELEMENT AT METHOD ************************************
  // --- 'elementAt' yöntemi
  // Liste içinde index'i verilen elementi döndürür.
  print("\n*** ELEMENT AT METHOD ************************************");
  print('\n--- "elementAt" yöntemi ile indexi verilen ögenin '
      'hangisi olduğunu öğrenebiliriz.---');
  var denizTasitlari = ['feribot', 'yat', 'deniz otobüsü', 'yolcu gemisi'];
  print(denizTasitlari.elementAt(2));

  // *** EVERY METHOD ************************************
  // --- 'every' yöntemi
  // Bu yöntem, tüm öğelerin
  // koşulu karşılayıp karşılamadığına bağlı olarak bir boole döndürür.
  // Bu yinelenebilir öğenin her elementinin
  // testi karşılayıp karşılamadığını kontrol eder.
  // Yineleme sırasındaki her öğeyi kontrol eder ve
  // bunlardan herhangi biri
  // test dönüşünü yanlış yaparsa false değerini döndürür,
  // aksi takdirde true değerini döndürür.
  print("\n*** EVERY METHOD ****************************");
  print('\n--- "every" yöntemi ile koşullanan duruma ilişkin her öge sınanır. '
      'koşullamadan geçenler \'true\' geçemeyenler \'false\' döndürür.---');
  var sports = ['cricket', 'tennis', 'football'];
  print(sports.every((e) => e.startsWith('a'))); // false
  sports.every((element) {
    print(element);
    return true;
  });

  // *** EXPAND METHOD ************************************
  // --- 'expand' yöntemi
  // Iterable<T> expand<T>(Iterable<T> f(E element)) => ExpandIterable<E, T>(this, f);
  // Bu Yinelenebilir öğenin her öğesini sıfır veya
  // daha fazla öğeye genişletir.
  // Ortaya çıkan Yinelenebilir, yineleme sırasında bu öğenin
  // her öğesi için f tarafından döndürülen öğeler üzerinden geçer.
  // Döndürülen Yinelenebilir tembeldir ve
  // her yinelendiğinde bunun her öğesi için f'yi çağırır.
  print("\n*** EXPAND METHOD ************************************");
  print('\n--- "expand" yöntemi ile belirtilen fonksiyon uyarınca '
      'liste genişletilebilir.---');
  var pairs = [
    [1, 2],
    [3, 4]
  ];
  var flattened = pairs.expand((pair) => pair).toList();
  print(flattened); // => [1, 2, 3, 4];

  var input = [1, 2, 3];
  var duplicated = input.expand((i) => [i, i]).toList();
  print(duplicated); // => [1, 1, 2, 2, 3, 3]

  // *** FIRST WHERE METHOD ************************************
  // --- 'firstWhere' yöntemi
  // E firstWhere(bool test(E element), {E orElse()?}){...}
  // Bu yöntem, verilen koşul karşılandığında ilk öğeyi listeden döndürür.
  // Benzer şekilde 'lastWhere()', verilen koşul karşılandığında listeden son öğeyi döndürür.
  // 'where()' koşulla eşleşen yeni bir liste döndürür.
  // Verilen yüklem testini karşılayan ilk elemanı döndürür.
  // Elemanlar arasında yineleme yapar ve testi tatmin eden ilkini döndürür.
  // Hiçbir öğe testi karşılamıyorsa, orElse işlevini çağırmanın sonucu döndürülür.
  // OrElse atlanırsa, varsayılan olarak bir StateError atar.
  print("\n*** FIRST WHERE METHOD ************************************");
  print('\n--- "firstWhere" yöntemi ile '
      'belirtilen koşulu sağlayan ilk öge döndürülür.---');
  var firstList = [1, 2, 3, 4, 5, 6];
  print(firstList.firstWhere((i) => i < 4)); // 1

  var sList = ['one', 'two', 'three', 'four'];
  print(sList.firstWhere((i) => i.length > 3)); // three

  // *** FOLD METHOD ************************************
  // --- 'fold' yöntemi
  // T fold<T>(T initialValue, T combine(T previousValue, E element)){...}
  // Bu yöntem, bir listenin tüm öğelerini bir initialValue ile birlikte
  // yineleyerek tek bir değer döndürür, yani, tüm öğelerin veya
  // tüm öğelerin ürününün toplamını istiyorsak,
  // fold bunu yapmamıza yardımcı olur.
  // Aşagıdaki örnekte, 5 ilkDeğerdir ve daha sonra kat tekrarlamayı
  // indeks 0'dan başlatır, initialValue'ya (5 + 1) eleman ekler ve
  // dizin 4'e (6 + 2, 8 + 3, 11 + 4, 15+) kadar devam eder. 5).
  // Böylece, tek bir değer, yani tüm elemanların toplamı + intialValue 20 olarak döndürülür.
  // Koleksiyonun her bir öğesini yinelenen bir şekilde
  // mevcut bir değerle birleştirerek bir koleksiyonu tek bir değere düşürür.
  // İnitialValue değerini başlangıç ​​değeri olarak kullanır,
  // ardından öğeler arasında yinelenir ve
  // birleştir işlevini kullanarak değeri her öğeyle günceller:
  print("\n*** FOLD METHOD ************************************");
  print('\n--- "fold" yöntemi ile '
      '.---');
  var lst = [1, 2, 3, 4, 5];
  var res = lst.fold(5, (i, j) => i + j);
  print('res is ${res}'); // res is 20

  // *** FOLLOWED BY METHOD ************************************
  // --- 'followedBy' yöntemi
  // Iterable<E> followedBy(Iterable<E> other){...}
  // Bu yöntem, verilen listeye yeni tekrarlar ekler.
  // Bu yinelenebilir ve diğerinin tembel birleşimini döndürür.
  // Döndürülen yinelenebilir, bu yinelenebilirle aynı öğeleri ve
  // bundan sonra, diğer yinelenen öğeleri orijinal tekrarlanabilirlerle
  // aynı sırada sağlayacaktır.
  print("\n*** FOLLOWED BY METHOD ************************************");
  print('\n--- "followedBy" yöntemi ile '
      'başka bir liste öncekini takip edebilir.---');
  var sportsList = ['cricket', 'tennis', 'football'];
  print(sportsList.followedBy(['golf', 'chess']).toList());
  // [cricket, tennis, football, golf, chess]

  // *** FOR EACH METHOD ************************************
  // --- 'forEach' yöntemi
  // void forEach(void f(E element)) {for (E element in this) f(element);}
  // f işlevini yineleme sırasında bu koleksiyonun her öğesine uygular.
  print("\n*** FOR EACH METHOD ************************************");
  print('\n--- "forEach" yöntemi ile bir listenin dökümünü alabilir ve '
      'o listenin her elemanı için kimi işlemleri gerçekleştirebiliriz.---');
  var taslar = ['çakıl taşı', 'dere taşı', 'mihenk taşı', 'musluk taşı'];
  taslar.forEach(print);
  taslar.forEach((element) {
    print(element);
  });
  taslar.forEach((element) => print(element));

  // *** JOIN METHOD ************************************
  // --- 'join' yöntemi
  // String join([String separator = ""]) {...}
  // Her öğeyi bir String'e dönüştürür ve dizeleri birleştirir.
  // Bu yinelenebilir öğelerin öğeleri arasında yineleme yapar,
  // Object.toString öğesini çağırarak
  // her birini bir String'e dönüştürür ve sonra dizeleri birleştirir ve
  // dize öğeleri arasına serpiştirilir.
  print("\n*** JOIN METHOD ************************************");
  print(
      '\n--- "join" yöntemi ile bir listenin tüm elemanlarını belirleyeceğimiz '
      'seçimlik bir karakteri aralarına koyarak tek bir String elde edebiliriz.---');
  var parcalar = ['üç', 'tunç', 'has', 'hoşaf'];
  print("${parcalar.join('/')}");

  // *** LAST WHERE METHOD ************************************
  // --- 'lastWhere' yöntemi
  // E lastWhere(bool test(E element), {E orElse()?}) {...}
  // Verilen yüklem testini karşılayan son elemanı döndürür.
  // Öğelerine doğrudan erişebilen bir yinelenebilir,
  // öğelerini herhangi bir sırayla kontrol edebilir
  // (örneğin, bir liste son öğeyi kontrol ederek başlar ve
  // ardından listenin başına doğru ilerler).
  // Varsayılan uygulama, yineleme sırasında öğeleri yineler,
  // her biri için test (öğe) denetler ve
  // son olarak eşleşen sonuncuyu döndürür.
  // Hiçbir öğe testi karşılamıyorsa,
  // orElse işlevini çağırmanın sonucu döndürülür.
  // OrElse atlanırsa, varsayılan olarak bir StateError atar.
  print("\n*** LAST WHERE METHOD ************************************");
  print('\n--- "lastWhere" yöntemi ile liste içinde '
      'koşulladığımız duruma uyan son ögeyi öğrenebiliriz.---');
  var cekmece = ['çöp', 'kaşık', 'çatal', 'bıçak', 'kuzine'];
  print(cekmece.lastWhere((element) => element.contains('k')));
  print(cekmece.lastWhere((element) => element.length < 4));

  // *** MAP METHOD ************************************
  // --- 'map' yöntemi
  // Iterable<T> map<T>(T f(E e)) => MappedIterable<E, T>(this, f);
  // Bu Yinelenebilir öğenin her bir öğesinde yineleme sırasında
  // f çağrılarak oluşturulan öğelerle yeni bir tembel Yinelenebilir döndürür.

  // Bu yöntem, eşlenen öğelerin bir görünümünü döndürür.
  // Döndürülen Yinelenebilir yinelenmediği sürece,
  // sağlanan f işlevi çağrılmaz. Dönüştürülen elemanlar
  // önbelleğe alınmayacaktır.
  // Döndürülen Yinelenebilir üzerinden birden çok kez yineleme,
  // sağlanan öğeyi f aynı öğede birden çok kez çağırır.

  // Döndürülebilir yinelenebilir yöntemlerde,
  // sonucun gerekli olmadığı herhangi bir elemanda
  // f çağrısının atlanmasına izin verilir.
  // Örneğin elementAt, f'yi yalnızca bir kez çağırabilir.
  // Map'i Dart Listesine dönüştürmenin başka bir yolu, Yinelenebilir map () yöntemini kullanmaktır.
  print("\n*** MAP METHOD ************************************");
  print('\n--- "map" yöntemi ile listeyi belirleyeceğimiz '
      'durumlara eşlenik ögeler listesine (map) çevirebiliriz.---');
  // Belirli bir listedeki her öğeyi dönüştürdükten sonra yeni bir liste oluşturur
  var fruits = ['banana', 'pineapple', 'watermelon'];
  var mappedFruits = fruits.map((fruit) => 'I love $fruit').toList();
  print(mappedFruits);

  // *** NO SUCH METHOD ************************************
  /**
      @pragma("vm:entry-point")
      external dynamic noSuchMethod(Invocation invocation);
   */
  // Var olmayan bir yönteme veya özelliğe erişildiğinde çağrılır.
  // Sınıflar özel davranış sağlamak için noSuchMethod öğesini geçersiz kılabilir.
  // Bir değer döndürülürse, orijinal çağrının sonucu olur.
  // Varsayılan davranış bir NoSuchMethodError atmaktır.
  print("\n*** NO SUCH METHOD ************************************");
  print('\n--- "noSuchMethod" yöntemine ilişkin '
      'henüz örnek kod geliştirilemedi.---');

  // *** REDUCE METHOD ************************************
  // --- 'reduce' yöntemi
  // E reduce(E combine(E value, E element)){...}
  // Bu yöntem, katlamaya çok benzer ve verilen listenin tüm öğelerini
  // yineleyerek tek bir değer döndürür. Tek fark, bu yöntemin herhangi
  // bir initialValue almaması ve verilen listenin boş olmamasıdır.
  // Sağlanan işlevi kullanarak koleksiyonun öğelerini
  // yinelemeli olarak birleştirerek bir koleksiyonu
  // tek bir değere düşürür.

  // Yinelenebilir en az bir elemana sahip olmalıdır.
  // Yalnızca bir öğesi varsa, o öğe döndürülür.

  // Aksi takdirde, bu yöntem yineleyicideki ilk öğeyle başlar ve
  // sonra yineleme sırasında kalan öğelerle birleştirilir.
  print("\n*** REDUCE METHOD ************************************");
  print('\n--- "reduce" yöntemi ile belirleyeceğimiz bir işlemle '
      'listenin tüm ögelerini tek bir değere indirgeyebiliriz.---');
  var listing = [1, 2, 3, 4, 5];
  var resemples = listing.reduce((i, j) => i + j);
  print('res is ${resemples}'); // res is 15

  // *** SINGLE WHERE METHOD ************************************
  // --- 'singleWhere' yöntemi
  // E singleWhere(bool test(E element), {E orElse()?}){...}
  // Bu yöntem, tam bir eşleşme olduğunda listeden ilk eşleşen öğeyi döndürür.
  // Belirtilen liste yinelenen içeriyorsa,
  // 'singleWhere' yöntemi bir istisnayı yeniden başlatır.
  // Bu durumda, listedeki yinelenen / yinelenenlerden bağımsız olarak
  // ilk eşleşen öğeyi döndüren firstWhere yöntemini kullanabiliriz.
  // Testi tatmin eden tek elemanı döndürür.
  // Testin (eleman) doğru dönüp dönmediğini görmek için öğeleri kontrol eder.
  // Tam olarak bir öğe testi tatmin ederse, o öğe döndürülür.
  // Birden fazla eşleşen öğe bulunursa, StateError öğesini atar.
  // Eşleşen bir öğe bulunmazsa, orElse sonucunu döndürür.
  // OrElse atlanırsa, varsayılan olarak bir StateError atar.
  print("\n*** SINGLE WHERE METHOD ************************************");
  print('\n--- "singleWhere" yöntemi ile bir ögenin '
      'tek olup olmadığını tek ise hangisi olduğunu öğrenebiliriz. '
      'Eğer öge birçok kez geçiyorsa \'StateError\' verecektir.---');
  var mList = [1, 2, 3, 4];
  print(mList.singleWhere((i) => i == 3)); // 3

  //var singleList = [1, 2, 3, 3, 4];
  //print(singleList.singleWhere((i) => i == 3));
  // Bad state: Too many elements

  // *** SKIP ************************************
  // Iterable<E> skip(int count) {return SkipIterable<E>(this, count);}
  // Bu yöntem, dizin 0'dan saymaya kadar olan öğeleri yok sayar ve
  // verilen listeden kalan tekrarlanabilir değerleri döndürür.
  // İlk sayım öğeleri dışında tümünü sağlayan bir Yinelenebilir döndürür.

  // Döndürülen yinelenebilir yinelendiğinde,
  // ilk olarak ilk sayım öğelerini atlayarak bunun üzerinde yinelemeye başlar.
  // Bu sayıdan daha az öğeye sahipse, sonuçta oluşan Yinelenebilir boştur.
  // Bundan sonra, geri kalan elemanlar bu tekrarlanabilir ile aynı sırayla yinelenir.

  // Bazı yinelenebilirler, daha önce öğeler arasında yineleme yapmadan,
  // örneğin bir Listeyi yinelediğinde daha sonraki öğeleri bulabilir.
  // Bu tür yinelemelerin ilk atlanan elemanları yok saymasına izin verilir.
  // Sayı negatif olmamalıdır.
  print("\n*** SKIP ************************************");
  print('\n--- "skip" yöntemi ile belirtildiği sayıda öge atlanarak '
      'listenin dökümü yapılır.---');
  var pcDonimi = ['işlemci', 'bellek', 'monitör', 'ssd'];
  print(pcDonimi.skip(2)); // (monitör, ssd)

  // *** SKIP WHILE ************************************
  // --- 'skipWhile' yöntemi
  // Iterable<E> skipWhile(bool test(E value)) {return SkipWhileIterable<E>(this, test);}
  // Test karşılanırken önde gelen öğeleri atlayan bir Yinelenebilir döndürür.
  // Filtreleme tembel olarak gerçekleşir.
  // Döndürülen yinelenebilir her yeni Yineleyici,
  // bunun tüm unsurları üzerinde tekrarlar.
  // Döndürülen yinelenebilir öğe, bu yinelenebilir öğeyi yineleyerek
  // ancak test (öğe) öğesinin true döndürdüğü
  // tüm başlangıç ​​öğelerini atlayarak öğeler sağlar.
  // Tüm elemanlar testi gerçekleştirirse, sonuçtaki yinelenebilir boştur,
  // aksi takdirde testin (elemanın) false döndürdüğü ilk elemandan başlayarak
  // kalan elemanları orijinal sıralarına göre tekrarlar.
  print("\n*** SKIP WHILE ************************************");
  print('\n--- "skipWhile" yöntemi ile belirtilen koşula uyan '
      'öge/ögeler atlanarak listenin dökümü yapılır.---');
  var hamListe = ['bir', 'iki', 'üç', 'dört', 'yüzaltı', 'on'];
  hamListe.sort((a, b) => a.length.compareTo(b.length));
  print(hamListe);
  var atlamaca = hamListe.skipWhile((value) => value.length < 4);
  print(atlamaca);

  var numList = [9, 0, 32, 5, 127, -1, 978];
  numList.sort();
  print(numList);
  var skippingWhileNum = numList.skipWhile((value) => value < 200);
  print(skippingWhileNum);

  // *** TAKE METHOD ************************************
  // --- 'take' yöntemi
  // Iterable<E> take(int count) {return TakeIterable<E>(this, count);}
  // Bu yöntem, indeks 0'dan verilen listeden sağlanan sayıya kadar
  // tekrarlanabilir bir değer döndürür.
  // Bu yinelenebilir ilk sayım öğelerinin tembel bir yinelenebilir döndürür.
  // Döndürülen Yinelenebilir sayım öğelerinden daha az içeriyorsa,
  // sayıdan daha az öğe içerebilir.
  // Öğeler, sayım elemanları görülene kadar yineleyiciden geçirilerek hesaplanabilir.
  // Sayı negatif olmamalıdır.
  print("\n*** TAKE METHOD ************************************");
  print('\n--- "take" yöntemi ile başlangıçtan belirtilen sayıya kadarki öge '
      'bir liste olarak alınabilir.---');
  var bocekler = ['çekirge', 'karınca', 'kıskaç', 'örümcek'];
  print(bocekler.take(2));
  print(bocekler.take(3).toList());

  // *** TAKE WHILE METHOD ************************************
  // --- 'takeWhile' yöntemi
  // Iterable<E> takeWhile(bool test(E value)) {return TakeWhileIterable<E>(this, test);}
  // Testi sağlayan öncü öğelerden tembel bir yinelenebilir döndürür.
  // Filtreleme tembel olarak gerçekleşir.
  // Döndürülen yinelenebilir her yeni yineleyici,
  // bunun unsurları üzerinde yinelemeye başlar.
  // Elemanlar, testin (eleman) yanlış olduğu
  // bir eleman bulunana kadar yineleyici üzerinden adım adım hesaplanabilir.
  // Bu noktada, döndürülen yinelenebilir durur
  // (moveNext () işlevi false değerini döndürür).
  print("\n*** TAKE WHILE METHOD ************************************");
  print('\n--- "takeWhile" yöntemi ile koşul sağlandığı sürece '
      'kaynak listeden ögeler alabiliriz.---');
  var manavTezgahi = [
    "elma",
    "muz",
    "mango",
    "portakal",
    "deveci armutu",
    "kara üzüm"
  ];
  var ikenAl = manavTezgahi.takeWhile((fruit) => fruit.length < 8);
  print(ikenAl);

  // *** TO LIST METHOD ************************************
  // --- 'toList' yöntemi
  // List<E> toList({bool growable = true}) {return List<E>.from(this, growable: growable);}
  // Bu Yinelenebilir öğenin öğelerini içeren bir Liste oluşturur.
  // Öğeler yineleme sırasında. Büyüyen yanlışsa liste sabit uzunluktadır.
  print("\n*** TO LIST METHOD ************************************");
  print('\n--- "toList" yöntemi ile ögeleri sabit sayıda belirtilmiş '
      'bir listeden genişleyebilir bir liste elde edebiliriz.---');
  var taneler = ['fasülye', 'bezelye', 'mısır', 'nohut'];
  var taneleriListele = taneler.toList(growable: true);
  print(taneleriListele);
  taneleriListele.add('pirinç');
  print(taneleriListele);
  var sabitListe = List(2);
  sabitListe[0] = 'olta';
  sabitListe[1] = 'kanca';
  // List komidin = sabitListe; // Unsupported operation: Cannot add to a fixed-length list
  List komidin = sabitListe.toList(growable: true);
  komidin.addAll(['incik', 'boncuk', 'cıncık', 'pıtırcık']);
  print(komidin);

  // *** TO SET METHOD ************************************
  // --- 'toSet' yöntemi
  // Set<E> toSet() => Set<E>.from(this);
  // Bu yinelenebilirle aynı öğeleri içeren bir Set oluşturur.
  // Eğer yinelenebilir bir defadan fazla bir eleman içeriyorsa veya
  // eşit olan bir veya daha fazla eleman içeriyorsa,
  // küme yinelemeden daha az eleman içerebilir.
  // Setteki elemanların sırasının, yinelenebilir olanla aynı olduğu garanti edilmez.
  print("\n*** TO SET METHOD ************************************");
  print('\n--- "toSet" yöntemi ile aynı ögelerden içeren bir listeyi '
      'herbir ögenin bir kez yer aldığı bir kümeye çevirebiliriz.---');
  var gripIlaci = ['nane', 'limon', 'zencefil', 'nane', 'limon'];
  var kume = gripIlaci.toSet();
  print(kume);

  // *** TO STRING METHOD ************************************
  // --- 'toString' yöntemi
  // external String toString();
  // Bu nesnenin dize (string) olarak temsilini döndürür.
  print("\n*** TO STRING METHOD ************************************");
  print('\n--- "toString" yöntemi ile bir listenin ögelerini birleştiren '
      'bir String\' elde edebiliriz.---');
  var fidelik = ['meşe', 'kayın', 'çam', 'ladin'];
  String fideStringi = fidelik.toString();
  print(fideStringi);

  // *** WHERE METHOD ************************************
  // --- 'where' yöntemi
  // Iterable<E> where(bool test(E element)) => WhereIterable<E>(this, test);
  // Yüklem testini karşılayan tüm öğelerle yeni bir tembel tekrarlanabilir döndürür.
  // Eşleşen elemanlar, döndürülen yinelemede
  // yineleyicide olduğu gibi aynı düzene sahiptir.
  // Bu yöntem, eşlenen öğelerin bir görünümünü döndürür.
  // Döndürülen Yinelenebilir yinelenmediği sürece,
  // verilen işlev testi çağrılmaz.
  // Yineleme sonuçları önbelleğe almaz ve
  // bu nedenle döndürülen Yinelenebilir öğeyi birden çok kez yinelemek,
  // verilen öğe testini aynı öğe üzerinde birden çok kez çağırabilir.
  print("\n*** WHERE METHOD ************************************");
  print('\n--- "where" yöntemi ile bir listenin ögelerinin sınanmasında '
      'koşula uyan elemanları farklı listelerde öbekleyebiliriz.---');
  var siniflar = ['6A', '6B', '7A', '7B', '8A', '8B'];
  print(siniflar);
  var sinif6 = siniflar.where((element) => element.contains('6'));
  print(sinif6);
  var sinif7 = siniflar.where((element) => element.contains('7'));
  print(sinif7);
  var sinif8 = siniflar.where((element) => element.contains('8'));
  print(sinif8);

  // *** WHERE TYPE METHOD ************************************
  // --- 'whereType' yöntemi
  // Iterable<T> whereType<T>() => WhereTypeIterable<T>(this);
  // T türündeki tüm öğelerle yeni bir tembel tekrarlanabilir döndürür.
  // Eşleşen elemanlar, döndürülen yinelemede
  // yineleyicide olduğu gibi aynı düzene sahiptir.
  // Bu yöntem, eşlenen öğelerin bir görünümünü döndürür.
  // Yineleme sonuçları önbelleğe almaz ve bu nedenle
  // döndürülen Yinelenebilir öğenin üzerinde birden çok kez yinelenmesi,
  // altta yatan öğeler yinelemeler arasında değişirse farklı sonuçlar verebilir.
  // Bu yöntem, belirli veri türündeki tüm öğelerle yinelenebilir bir değer döndürür.
  // Diyelim ki String ve int gibi karma veriler içeren bir listemiz var ve
  // ondan int verilerini almak istiyoruz,
  // o zaman whereType yöntemini şu şekilde kullanırız:
  print("\n*** WHERE TYPE METHOD ************************************");
  print('\n--- "whereType" yöntemi ile bir listenin ögelerini '
      'tiplerini sınayarak koşula uyan elemanları '
      'farklı listelerde öbekleyebiliriz.---');
  var karmaTipliListe = [1, "a", 2, "b", 3, "c", 4, "d"];
  var integers = karmaTipliListe.whereType<int>();
  var strings = karmaTipliListe.whereType<String>();
  print(integers); // (1, 2, 3, 4)
  print(strings);

  /*************************************************
    5. Listelerin işleçleri (opertors)
  *************************************************/
  /*********************************************************
    OPERATORS
    operator +, operator ==, operator [], operator []=
  *********************************************************/
  print("\n_______________ OPERATORS _______________");
  print("\n5. LISTELERİN İŞLEÇLERİ (OPERATORS)");
  // *** OPERATOR + ************************************
  // '+' işleci
  // List<E> operator +(List<E> other);
  // Bu listenin ve diğerlerinin birleşimini döndürür.
  // Bu listenin öğelerini ve ardından diğerinin öğelerini içeren
  // yeni bir liste döndürür.
  // Varsayılan davranış, normal bir büyütülebilir liste döndürmektir.
  // Bazı liste türleri,
  // kendileriyle aynı türde bir liste döndürmeyi seçebilir (bkz. Uint8List. +);
  print("\n*** OPERATOR + ************************************");
  print('\n--- "+" işleci ile aynı türden ögeleri birbirleriyle toplayabilir '
      'ya da birbirlerinin peşine ekleyebiliriz.---');
  var elmalar = ['misket', 'ekşi', 'ziraat', 'çoban'];
  var armutlar = ['deveci', 'akça', 'mustafabey', 'ankara'];
  var maaslar = [3050, 4100, 4800, 5100];
  var ekdersler = [545, 132, 320, 870];
  var toplam = List(maaslar.length);
  for (int i = 0; i < maaslar.length; i++) {
    toplam[i] = maaslar[i] + ekdersler[i];
  }
  print(elmalar[0] + armutlar[0]);
  print(toplam);

  // *** OPERATOR == ************************************
  // --- '==' işleci
  // bool operator ==(Object other);
  // Bu listenin diğerine eşit olup olmadığı.
  // Listeler varsayılan olarak yalnızca kendilerine eşittir.
  // Diğeri de bir liste olsa bile, eşitlik karşılaştırması
  // iki listenin öğelerini karşılaştırmaz.
  print("\n*** OPERATOR == ************************************");
  print('\n--- "==" işleci ile dönüş değeri true (doğru) ya da false (yanlış) '
      'olacak biçimde karşılaştırmalar yapmamızı sağlar.---');
  var manavEngin = ['amasya misket', 'ekşi elma', 'deveci armutu'];
  var manavRengin = ['amasya misket', 'kırkağaç kavunu', 'fındık'];
  for (var i = 0; i < manavEngin.length; i++) {
    print(manavEngin[i] == manavRengin[i]);
  }

  // *** OPERATOR [] ************************************
  // --- '[]' işleci
  // E operator [](int index);
  // Listede belirtilen dizindeki nesneyi döndürür veya
  // dizin sınırların dışındaysa bir RangeError atar.
  print("\n*** OPERATOR [] ************************************");
  print('\n--- "[]" işleci ile liste tanımlayabilir ve bu liste elemanlarını '
      'köşeli parantezleri içine artı tamsayı değerleri yazarak gezebiliriz.---');
  var zuccaciye = ['vazo', 'biblo', 'kaşık', 'saksı'];
  print(zuccaciye[0]);
  print(zuccaciye[2]);

  // *** OPERATOR []= ************************************
  // --- '[]=' işleci
  // void operator []=(int index, E value);
  // Listede verilen dizindeki değeri değere ayarlar veya
  // dizin sınırların dışındaysa bir RangeError atar.
  print("\n*** OPERATOR []= ************************************");
  print('\n--- "[]=" işleci ile index parantezlerini arasına '
      'artı tamsayı değerleri vererek dizideki ögenin değerini değiştirebiliriz.---');
  List<String> depo = List(3);
  depo[0] = 'içerik ve atama işleçlerinin bileşik ataması için bir değer';
  print(depo);

  /*************************************************
    6. Listelerin statik yöntemleri (static methods)
  *************************************************/
  /*********************************************************
    STATIC METHODS
    castFrom, copyRange, writeIterable
  *********************************************************/
  print("\n_______________ STATIC METHODS _______________");
  print("\n5. LISTELERİN STATİK YÖNTEMLERİ (STATIC METHODS)");
  // *** CAST FROM ************************************
  // --- 'castFrom' statik yöntemi
  // static List<T> castFrom<S, T>(List<S> source) => CastList<S, T>(source);
  // Kaynağı Liste<T> olarak uyarlar.
  // Liste, T olmayan bir öğe ürettiğinde, öğe erişimi atılır.
  // Uyarlanmış listeye bir T değeri kaydedilmeye çalışıldığında,
  // değer S'nin bir örneği olmadıkça mağaza atar.
  // Kaynağa erişilen tüm öğeler aslında T örneğiyse ve
  // döndürülen listeye depolanan tüm öğeler gerçekten S örneğiyse,
  // döndürülen liste Liste T olarak kullanılabilir.
  // Bu listenin bir görünümünü R örneklerinin bir listesi olarak döndürür.
  // List<R> cast <R>()
  // Bu liste yalnızca R'nin örneklerini içeriyorsa,
  // tüm okuma işlemleri doğru şekilde çalışacaktır.
  // Herhangi bir işlem, R örneği olmayan bir öğeye erişmeye çalışırsa,
  // erişim bunun yerine atar.
  // Listeye eklenen öğeler (örneğin, add veya addAll kullanılarak),
  // ekleme işlevi için geçerli bağımsız değişkenler olması için
  // R'nin örneği olmalıdır ve bunlar aynı zamanda
  // bu liste tarafından kabul edilmeleri için E'nin örnekleri olmalıdır.
  // Tipik olarak List.castFrom<E, R>(this) olarak uygulanır.
  print("\n*** CAST FROM ************************************");
  print(
      '\n--- "castFrom" statik yönteminin kullanılışına ilişkin örnek bulunamadı.---');

  // *** COPY RANGE ************************************
  // --- 'copyRange' statik yöntemi
  // Bir liste aralığını başka bir listeye kopyalayın.
  // Bu setRange gibi yöntemleri uygulamak için kullanılabilecek
  // bir yardımcı program işlevidir.
  // Başlangıçtan bitişe kadar olan aralık
  // geçerli bir kaynak aralığı olmalı ve
  // başlangıç ​​konumundan bitiş elemanları için yer olmalıdır.
  // Başlatma atlanırsa, varsayılan olarak sıfır olur.
  // Son belirtilmezse, varsayılan olarak source.length olarak ayarlanır.
  // Kaynak ve hedef aynı listede ise, çakışan kaynak ve
  // hedef aralıklara uyulur, böylece hedef aralık,
  // kaynak aralığının ilk içeriğini içerir.
  // Aksi takdirde, eleman kopyalama sırası garanti edilmez.
  print("\n*** COPY RANGE ************************************");
  print(
      '\n--- "copyRange" statik yönteminin kullanılışına ilişkin örnek bulunamadı.---');

  // *** WRITE ITERABLE ************************************
  // --- 'writeIterable' statik yöntemi
  // Bir yinelenebilir öğenin öğelerini bir listeye yazın.
  // Bu setAll gibi yöntemleri uygulamak için
  // kullanılabilecek bir yardımcı program işlevidir.
  // Kaynak unsurları, konumundaki konumdan hedefe yazılır.
  // Hedefin son konumunu yazdıktan sonra kaynak daha fazla eleman içermemelidir.
  // Kaynak bir listeyse, copyRange işlevinin daha verimli olması muhtemeldir.
  print("\n*** WRITE ITERABLE ************************************");
  print(
      '\n--- "writeIterable" statik yönteminin kullanılışına ilişkin örnek bulunamadı.---');
  // ---
} // 'main' işlevi burada sona erdi ----------------
