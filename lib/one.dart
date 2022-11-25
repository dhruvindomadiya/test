

import 'package:flutter/material.dart';

class two extends ChangeNotifier
{
  int sum=0;
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  total(String a,String b)
  {
    sum=int.parse(a)+int.parse(b);
    print("sum=$sum");
    notifyListeners();
  }

}