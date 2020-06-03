void main(List<String> args) {
  divider("*");
  print(giveAcustomMessage("Developper"));
  print(sayHi("Ece"));
  sayHello("Foxy Bunny");
  print(sayHi2());
  sayHello2();
  divider("=");
  String heading = "Merhaba Dünya!";
  String paragraph = """
  Biz üstünde yaşayan insan nesli olarak
  senin kaynaklarının sonsuz olduğunu sanıyoruz.
  Sana ne kadar zarar verirsek verelim 
  senin bunula kısa sürede başa çıkacağını düşünüyoruz.
  Aslında senden neyi haksızca alırsak
  çocuklarımızın geleceğinden aldığımızı idrak etmiyoruz.
  Lütfen sen bizim gibi olma ve çocuklarımıza iyi davran!
  """;
  String signature ="Dünyalı";

  String application = 
    makeAnApplication(
      heading, 
      paragraph, 
      signature);

  print(application);
  divider("1-");
  welcome("Gürkan");
  divider("2-");
  welcome("Gürkan", "Şahin");
  divider("3-");
  welcome("Mine", "Şahin", 13);
  divider("4-");
  welcome("Ece", null, 9);
  divider("5-");
  welcome("Ergün", null, 13);
  divider("6-");
  welcome("Ayşegül", null, 16);
  divider("7-");
  welcome("Hamza", "Muslu",null);
  divider("8-");
  welcome("Şahin", null, 13);
  divider("9-");
  welcome("Erdem", null, 18);
  divider("10-");

  welcomeAgain("Gürkan");
  welcomeAgain("Ece", age:12);
  welcomeAgain("Mine", surName:"Şahin");
  welcomeAgain("Hüsamettin", surName:"The Cat", age: 3);
}// main has been ended here ----------------

// Developer defined functions --------------

String giveAcustomMessage(String toWhom){
  return ("Hello! Especially you, $toWhom!");
}//------------------------------------------

//parametric
String sayHi(String toWhom){ return ("Hi! $toWhom!");}
void sayHello(String toWhom){ print("Hello! $toWhom!");}

//non-parametric
String sayHi2(){ return("Hi!");}
void sayHello2(){ print("Hello aliens");}

String makeAnApplication(String heading, String paragraph, String signature){
  return ("$heading! \n\n $paragraph \n $signature");
}

void divider(String modul){
  print("\n${modul*38}\n");
}

//optional parameter
void welcome(String name, [String surName, int age]){
  if(surName == null && age == null){
    print(
    "Dear $name! Welcome to our education application. "
    "This app is for 12-15 years old children.");
    
  }else if(surName != null && age == null){
    print(
    "Dear $name $surName! Welcome to our education application. "
    "This app is for 12-15 years old children.");

  }else if(surName == null && age != null){
        if(age>12 && age<15){
          print(
    "Dear $name! Welcome to our education application. "
    "This app is for you! We also provide $age years old children.");
    }else{
      print("Dear $name! This app isn't for you. We provide 12-15 years old children. Maybe you wish to take a look for genaral informations!");
    }
}else if(surName != null && age != null){
  if(age>12 && age<15){
    print(
    "Dear $name $surName! Welcome to our education application. "
    "This app is for you! We also provide $age years old children.");
    }else{
      print("Dear $name $surName! This app isn't for you. We provide 12-15 years old children. Maybe you wish to take a look for genaral informations!");
    }
    }
}

welcomeAgain(String name, {String surName, int age}){
  (age == null) ? 
    print("Dear $name ${surName ?? ''}! Could you write your age please?"):
    print("Dear $name ${surName ?? ''}! Are you really $age years old?");
}

/*
TERMINAL OUTPUT OF FUNCTIONS DART

**************************************
Hello! Especially you, Developper!
Hi! Ece!
Hello! Foxy Bunny!
Hi!
Hello aliens

======================================
Merhaba Dünya!! 

   Biz üstünde yaşayan insan nesli olarak
  senin kaynaklarının sonsuz olduğunu sanıyoruz.
  Sana ne kadar zarar verirsek verelim 
  senin bunula kısa sürede başa çıkacağını düşünüyoruz.
  Aslında senden neyi haksızca alırsak
  çocuklarımızın geleceğinden aldığımızı idrak etmiyoruz.
  Lütfen sen bizim gibi olma ve çocuklarımıza iyi davran!
   
 Dünyalı

1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-

Dear Gürkan! Welcome to our education application. This app is for 12-15 years old children.

2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-

Dear Gürkan Şahin! Welcome to our education application. This app is for 12-15 years old children.

3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-
Dear Mine Şahin! Welcome to our education application. This app is for you! We also provide 13 years old children.

4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-4-

Dear Ece! This app isn't for you. We provide 12-15 years old children. Maybe you wish to take a look for genaral informations!

5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-5-

Dear Ergün! Welcome to our education application. This app is for you! We also provide 13 years old children.

6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-6-

Dear Ayşegül! This app isn't for you. We provide 12-15 years old children. Maybe you wish to take a look for genaral informations!

7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-

Dear Hamza Muslu! Welcome to our education application. This app is for 12-15 years old children.

8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-8-

Dear Şahin! Welcome to our education application. This app is for you! We also provide 13 years old children.

9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-

Dear Erdem! This app isn't for you. We provide 12-15 years old children. Maybe you wish to take a look for genaral informations!

10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-10-
Dear Gürkan ! Could you write your age please?
Dear Ece ! Are you really 12 years old?
Dear Mine Şahin! Could you write your age please?
Dear Hüsamettin The Cat! Are you really 3 years old?
Exited


*/