import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider_tutorial/models/people.dart';

class DataProvider extends ChangeNotifier {
  List<People> dataPeople = [
    People(color: Colors.red, name: "Nama", description: "afgfdafsaerf"),
    People(color: Colors.greenAccent, name: "adsf", description: "adfadgfg"),
    People(
        color: Colors.deepOrange, name: "gfhrt", description: "adsfadsfsdag"),
    People(
        color: Colors.deepPurple, name: "vbvcb", description: "asdfdasfsdaf"),
    People(
        color: Colors.redAccent,
        name: "45345345",
        description: "adsfadsfasdfsdafs"),
  ];

  addDataToList(People people) {
    this.dataPeople.add(people);
    notifyListeners();
  }

  List<People> get getDataListPeople => this.dataPeople; 
  
}
