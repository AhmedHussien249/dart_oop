import 'dart:io';

import 'oop.dart';
void main() {
  Human ahmed = Human( 27, 180, 80, "black","A+");
  ahmed.numberOfArms = 10;
  print("***** ahmed object");
  print(ahmed.numberOfArms);
  print(ahmed.bloodType);

  Lion scar = Lion(100, "brown");
  print("*****lion object");
  print(scar.weight);
  print(scar.skinColor);
  scar.eat();

  Dog dog = Dog( 100,  "white", bloodType: "A",);
  print("*****dog object");
  print(dog.bloodType);
  print(dog.weight);
  print(dog.skinColor);
  dog.numberOfLimbs=6;
  print(dog.numberOfLimbs);
  dog.eat();
  dog.sleep();
  dog.walk();
  dog.bark();
  dog.play();

  Snake snake = Snake(100, "brown");
  snake.crawl();

  // polymorphism : mot3dd el ashkal
  List<Animal> zoo = [scar, dog];
  // fa kda class el animal tab2 nazryt el polymorphism


  Circle c1 = Circle(radius: 5,x: 10,y: 10);
  print("********c1");
  c1.drawCircle();
  Circle c2 = Circle.origin(5);
  print("*******c2");
  c2.drawCircle();

  // anonymous object
  List<Animal> animals =[Dog(200,"white"),Lion(200,"brown"),Snake(200,"brown" )];
  animals[0].sleep();


  Gender gender;
  print("enter your gender");
  gender = stdin.readLineSync() == "male" ? Gender.male : Gender.female;

  switch (gender) {
    case Gender.male:
      print("your gender male");
      break;
    case Gender.female:
      print("your gender female");
      break;
    case null:
      // TODO: Handle this case.
      print("enter your gender");
    case Gender.other:
      // TODO: Handle this case.
      print("i don't know");
  }


}


// enum : bst5dmha lma akon 3ayz a3ml mgmo3a mn el kym m7doda y3ni a2dr a3dhm

enum Gender { male, female, other }