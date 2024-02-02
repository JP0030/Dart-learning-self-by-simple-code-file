import 'dart:io';

void main () {
  print('Hello Dart !');
  stdout.write('Enter Your Name_ :- ');
  var name = stdin.readLineSync();

  stdout.write("Welcome , \"$name\"\n");
  var Jay = Human();

  var myC = myClass();
  myC.printName("Keen");

  myC.printName("Nish");

}

class Human {
}

class myClass{
  void printName(String name){
    print(name);
  }
}

