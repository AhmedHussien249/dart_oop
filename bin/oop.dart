// 1- classes , object , constructors and methods
// 2 - encapsulation

class Human {
  // attributes
  int _numberOfArms = 2; // encapsulation
  double? age;
  double? weight;
  double? height;
  String? hairColor;

  // constructor
  Human({double? age, double? height, double? weight, String? hairColor}) {
    this.age = age;
    this.height = height;
    this.weight = weight;
    this.hairColor = hairColor;
  }

  // encapsulation methods
  void setNumberOfArms(int numberOfArms) {
    if (numberOfArms <= 2 && numberOfArms >= 0) {
      this._numberOfArms = numberOfArms;
    } else {
      print("impossible");
    }
  }

  int getNumberOfArms() {
    return _numberOfArms;
  }
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
