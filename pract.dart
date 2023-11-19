import 'dart:io';
import 'package:flutter/cupertino.dart';

void main() {
  stdout.write('object');
  var nm = stdin.readLineSync();
  var raman = Human();

  int? a; //nullable variable, can be used as it is now
  int b; //non-nullable variable, canNOT be used in its current form.
  BigInt lngval =
      BigInt.parse('4424435646768687996756445'); //converts to int from string
  num percntge = 34.52;
  double percntg = 54.54;
  bool islgn = false;

//STATIC DATATYPE:
  var st = "first time data's datatype is assigned in-place of var";
  // st=4;  //WOULD GIVE ERROR AS IT DOESN'T CONFORM WITH THE SELF INITIALIZED DATATYPE. Though explicitly it wasn't told that it's string, but implicitly it assumes to be string onwards the first assignment.
//DYNAMIC DATATYPE:
  var chngn;
  dynamic chngn2; // can also be written instead of 'var'.
  chngn = 'im string';
  chngn = 43;
  chngn = false; //changing own's datatype
  String nmad = raman.ad(3, 4).toString();
  raman.fnc(nmad);

  var lstnm = [3, 5, 68, 8];
  lstnm.add(34); //adds at last the element
  var nmm = [];
  nmm.addAll(lstnm); //adds all list at end of last element
  nmm.insert(3, '43'); //inserts element at 3rd index
  nmm.insertAll(3, lstnm); //inserts all list inn place of 3rd index and ahead

  nmm[2] = 'ramee';
  lstnm.replaceRange(
      0, 2, [77, 53, 77, 43]); //replaces 0,1 index with array then continues it
  lstnm.remove(53); //find value of 53 nd remove it
  lstnm.removeAt(2); //remove data of index 2.
  lstnm.removeRange(0, 3); //removes from 0-2, not 3 range
  lstnm.length;
  lstnm.isNotEmpty;
  lstnm.reversed;

  var mapnm = {
    //key-value mapping
    'key1': 'val1',
    'ky2': 2.2,
    'ky3': true,
  };
  mapnm['ky2'] = 'rman';
  print(mapnm['ky2']);
  mapnm.keys;
  mapnm.values;
  mapnm.containsKey('key1'); //true if key is found
  mapnm.containsValue(2.2); //true if value is found

  var mapnm2 = Map();
  mapnm2['1key'] =
      45; // //Flutter application is dynamic, JSON is used & API is used, MAP is used.

  final String nam;
  nam = 'rmnjar';
  //final var nam //cannot be written as it mustn't  be changed once assigned first time while var actually neans that its value is variable.
  //final dynamic nam // cannot be written as dynamic means that datatype of anytype can be assigned in realtime to nam while final means the opposite.
  const nam2 =
      'fdds'; //const must be assigned upon declaration and no change can happen.
  final nmlst = [
    "rmn",
    "ramnauja",
    "aman",
  ]; //cannot be assigned again later.  //compile time changes in final can e done but not in const
}

//
//
//
class Human {
  Human() {
    //'init block' of class
    stdout.write('Human Default constructor');
  } //WHEN A CLASSS' OBJECT IS CREATED, ITS' DEFAULT CONSTRUCTOR WOULD BE CALLED.

  void fnc(String nme) //void returns null implicitly
  {
    stdout.write(nme);
  }

  int ad(int ab, int ba) {
    int sm = ab + ba;
    return sm;
  }
}
