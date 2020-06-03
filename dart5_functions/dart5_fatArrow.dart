void main(List<String> args) {
  //FAT ARROW
  int a = 21;
  int b = 9;
  
  divider("1. multiply ");
  print(multiply(a, b));
  print(multiplyFatArrow(a, b));
  
  divider("2. divide ");
  print(divide(a, b));
  print(divideFatArrow(a, b));

  divider("3. add ");
  print(add(a, b));
  print(addFatArrow(a, b));

  divider("4. subtruct ");
  print(subtract(a, b));
  print(subtractFatArrow(a, b));
}// main has been ended -------------

//-----------------------------------
void divider(String modul){
  print("\n${modul*5}\n");
}

int multiply(int a, int b){
  return a*b;
}
int multiplyFatArrow(int a, int b) => a*b;


int divide(int a, int b){
  return a~/b;
}
int divideFatArrow(int a, int b) => a~/b;


int add(int a, int b){
  return a+b;
}
int addFatArrow(int a, int b) => a+b;


int subtract(int a, int b){
  return a-b;
}
int subtractFatArrow(int a, int b) => a-b;

/*
TERMINAL OUTPUT

1. multiply 1. multiply 1. multiply 1. multiply 1. multiply
189
189

2. divide 2. divide 2. divide 2. divide 2. divide 

2
2

3. add 3. add 3. add 3. add 3. add 

30
30

4. subtruct 4. subtruct 4. subtruct 4. subtruct 4. subtruct 

12
12
Exited


*/