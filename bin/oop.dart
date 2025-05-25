// 1- classes , object , constructors and methods
// 2 - encapsulation
// 3- inheritance
// 4- polymorphism
// 5- abstract class
// 6- implements
// 7- named constructor
// 8- mixins

class Human {
  // attributes
  int _numberOfArms = 2; // encapsulation
  double? age;
  double? weight;
  double? height;
  String? hairColor;
  String? bloodType;

  // constructor

  // d el tre2a el badena
  // Human({double? age, double? height, double? weight, String? hairColor}) {
  //   this.age = age;
  //   this.height = height;
  //   this.weight = weight;
  //   this.hairColor = hairColor;
  // }

  // el tre2a el a7sn 3shan tdy baynat le attributes
  // w tdaf f el attributes ely f el class
  Human(this.age, this.height, this.weight, this.hairColor, [this.bloodType]);

  // encapsulation methods el badena
  // void setNumberOfArms(int numberOfArms) {
  //   if (numberOfArms <= 2 && numberOfArms >= 0) {
  //     this._numberOfArms = numberOfArms;
  //   } else {
  //     print("impossible");
  //   }
  // }
  // int getNumberOfArms() {
  //   return this._numberOfArms;
  // }

  // arrow function
  // int getNumberOfArms()=>this._numberOfArms;

  // setter
  set numberOfArms(int numberOfArms) {
    if (numberOfArms <= 2 && numberOfArms >= 0) {
      this._numberOfArms = numberOfArms;
    }
  }

  // getter
  int get numberOfArms => this._numberOfArms;
}

// class
// leh b3ml class 3shan a3rf a3ml fsela w adeha 5awas w semat
// k2ny 3ml mot8yr kda
// y3ni el class d b2a data tybe
// bdelo b2a esm b3d kda

// object:
// a hwa el object : object y3ni ka2n
// el object d byta5d mn el class 3shan a3rf ast5dm
// 5was w semat (attributes) el class

// methods:
// el fr2 ben el methods w el function
// el method hya function tm t3refha gwa el class

// constructor:
// a hwa el constructor w leh lazm aktbo
// constructor y3ni monsh2 fa hwa el bynsh2 el object el ana w5do mn el class
// fe fyda kman le el constructor w hya en ana a2dr adelo baynat zy el function
// b 7eas en ana msh kol mra agy a5od object afdl aktb stor kteer
// la ana bdy el baynat le el constructor w lma agy a5od object
// lazm ady el bynat d
// w mmkn t5ly el bynat d named w requird named

// encapsulation:
// encapsulation y3ni ta8lef
// w bst5dmo 3shan yb2a 3ndy control aktr 3la el attribute
// w m7dsh y2dr y8yr kemto aw y3ml access 3leh
// bra el file bta3 el class
// ezay b3mlo : 3n tre2 edaft (_) abl el attribute
// w sa3tha b2a a2dr a3ml method f el class w at7km zy ma ana 3ayz
// bs lazm a3ml 2 method w7da tdy kema w w7da trg3ly el kema
// w el 2 method dol b2a el badelhm el setter w el getter
// bykon shaklhm a7sn f el ktaba w b2dr at3aml m3ahm k2nhm attribute

// inheritance:
abstract class Animal {
  int? weight;

  String? skinColor;
  int numberOfLimbs = 4;

  Animal(this.weight, this.skinColor);

  eat();

  void sleep() {}
}

mixin AnimalsCanWalkMixin {
  void walk() {
    print("walking");
  }
}

mixin ReptilesMixin {
  void crawl() {
    print("crawling");
  }
}

mixin PetsMixin {
  void play() {
    print("playing");
  }
}

class Lion extends Animal with AnimalsCanWalkMixin {
  Lion(super.weight, super.skinColor);

  @override
  void eat() {
    print("eating meat");
  }

  void roar() {
    print("roaring");
  }
}

// implements
class Dog with AnimalsCanWalkMixin, PetsMixin implements Animal {
  String? bloodType;

  @override
  eat() {
    print("eating");
  }

  void bark() {
    print("barking");
  }

  @override
  int numberOfLimbs = 4;

  @override
  String? skinColor;

  @override
  int? weight;

  Dog(this.weight, this.skinColor, {this.bloodType});

  @override
  void sleep() {
    print("sleeping");
  }
}

class Snake extends Animal with ReptilesMixin {
  Snake(super.weight, super.skinColor);

  @override
  eat() {
    print("eat mouses");
  }
}

class Circle {
  double radius;
  late double y;
  late double x;

  Circle({required this.radius, required this.y, required this.x});

  drawCircle() {
    print("draw circle with radius :$radius at x:$x y:$y");
  }

  // named constructor
  Circle.origin(this.radius) {
    this.y = 0;
    this.x = 0;
  }
}

// super constructor
// 5ly balk a hwa el suber
// el super d bst5dmo 3shan ashawr 3la el constructor
// el ab bdl ma ady le el constructor el bywrtho this
// 3shan ashawr 3la el attributes bst5dm super

// 5ly balk b2a
// lw ktbt gwa el parameter data leha ashkal
// 1- mn8er akwas 5als d b2a required 3ady
// 2- {} b el akwas d b2a optional named
// 3- {} b el akwas d w fe ablo required b2a required named
// 4- [] w d optional mn8er named

// override methods
// hya nfs el method el f el class el ab
// bs mt3dl 3leha w m3molha e3adt ktaba

// abstract class :
// d class bs feha method el method d mfehash code
// bt5leny mogbr lma a3ml class tany bywrs el abstract class
// eny a3ml override le el method d w adehla el 5was el ana 3yzha
// 5ly balk el abstract class mynf3sh a5od mno object hwa byst3ml f el wrasa bs
// ynf3 ast5dmo ka type bs

// implements :
//d class bywrs class tany w lazm y3ml override le kol 7aga feh

// named constructor :
// bst5dmo lw 3ayz a3ml constructor b attributes tanya

// mixins :
// d b2a ya m3lm shabh el class b2a el fr2 en ana mmkn adefo ytwrs m3 class
// wars class tany w a2dr a3ml kza mixin w w a5ly el class yb2a wars class tany
// w wars aktr mn mixin w lw fe sefat moshtrka f el kza mixin el hwa warshm
// bya5od el sefa el mwgoda f a5r mixin


// 5lek b2a 3arf en ay class enta bt3mlo bykon wars el OBJECT CLASS

// 5lek fakr en fe 7aga mohma 2yma 3leha flutter w hya el ANONYMOUS OBJECT
// bt5leny a3ml el object w a3ml access 3leh mn8er ma adelo esm

