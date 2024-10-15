import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  List countList=[1,2,3,4,5];

  void addCountList(){
    
    countList.add(countList.last+1);
    notifyListeners();
  }
  

  
}