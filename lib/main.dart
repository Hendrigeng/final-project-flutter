import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:levelflutterfinal/view/dashbord.dart';
import 'package:levelflutterfinal/view/login.dart';
import 'package:levelflutterfinal/view/profile.dart';
import 'package:levelflutterfinal/view/welcom.dart';
import 'package:levelflutterfinal/viewmodel/viewmodel.dart';



void main() {
  runApp(
      ChangeNotifierProvider(create: (context)=>  ViewModel(),child: myapp(), )
  );

}

class myapp extends StatelessWidget {
   myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: app(),
    );
  }
}


//to run the first page login only//