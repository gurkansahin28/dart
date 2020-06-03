void main(){
    print("\n");
    var anyVar;
    print("var anyVar; $anyVar");
    if(anyVar == null) print("Bildirimi yapılmış ama değeri atanmamış.");
    
    var anyVar2 = null;
    print("var anyVar2 = null; $anyVar2"); 
    print("\n");

    print(" __________ VAR ___________\n");

    var changeableTypeVariableVar;
    print("var changeableTypeVariableVar; $changeableTypeVariableVar");

    changeableTypeVariableVar = null;
    print("changeableTypeVariableVar = null; $changeableTypeVariableVar");

    changeableTypeVariableVar = 3;
    print("changeableTypeVariableVar = 3; $changeableTypeVariableVar");

    changeableTypeVariableVar = 10/3;
    print("changeableTypeVariableVar = 10/3; $changeableTypeVariableVar");

    changeableTypeVariableVar = 3.14;
    print("changeableTypeVariableVar = 3.14; $changeableTypeVariableVar");

    changeableTypeVariableVar = true;
    print("changeableTypeVariableVar = true; $changeableTypeVariableVar");

    changeableTypeVariableVar = 1000.01;
    print("changeableTypeVariableVar = 1000.01; $changeableTypeVariableVar");

    changeableTypeVariableVar = 6.02e23;
    print("changeableTypeVariableVar = 6.02e23; $changeableTypeVariableVar");

    changeableTypeVariableVar = "\"var\" bir Bukalemun gibi.";
    print("changeableTypeVariableVar = \"\"var\" bir Bukalemun gibi.\"; $changeableTypeVariableVar");

    print(" \n__________ DYNAMIC ___________\n");

    dynamic changeableTypeVariableDynamic;
    print("var changeableTypeVariableDynamic; $changeableTypeVariableDynamic");

    changeableTypeVariableDynamic = null;
    print("changeableTypeVariableDynamic = null; $changeableTypeVariableDynamic");




    changeableTypeVariableDynamic = -9;
    print("changeableTypeVariableDynamic = -9; $changeableTypeVariableDynamic");

    changeableTypeVariableDynamic = 1/27;
    print("changeableTypeVariableDynamic = 1/27; $changeableTypeVariableDynamic");

    changeableTypeVariableDynamic = 3.14/2;
    print("changeableTypeVariableDynamic = 3.14/2; $changeableTypeVariableDynamic");

    changeableTypeVariableDynamic = false;
    print("changeableTypeVariableDynamic = false; $changeableTypeVariableDynamic");

    changeableTypeVariableDynamic = 5/1000.01;
    print("changeableTypeVariableDynamic = 5/1000.01; $changeableTypeVariableDynamic");

    changeableTypeVariableDynamic = 6.02e23-0.5;
    print("changeableTypeVariableDynamic = 6.6.02e23-0.5; $changeableTypeVariableDynamic");

    changeableTypeVariableDynamic = "\"dynamic\" de bir Bukalemun gibi.";
    print("changeableTypeVariableDynamic = \"\"dynamic\" de \"dynamic\" gibi bir Bukalemun.\"; $changeableTypeVariableDynamic");
    


}
