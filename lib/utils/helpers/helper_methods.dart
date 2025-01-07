import 'package:flutter/material.dart';

class HelperMethods {

  // get screen width 
  static double screenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  // get screen height
  static double screenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

}