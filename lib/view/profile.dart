import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:levelflutterfinal/viewmodel/viewmodel.dart';


class prof extends StatelessWidget {
  const prof({super.key});

  @override
  Widget build(BuildContext context) {
    return

      Consumer<ViewModel>(builder: (context ,viewmodel ,child ){

      return Scaffold(
      appBar: AppBar(
        title: Text(
          'USER PROFILE',
          style: TextStyle(
              color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.green,
      ),


      //------profile page title and picture and information------//


      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                height: 200.0,
                color: Colors.orange,
                child: Center(
                  child: const Text(
                    'HEND MOHAMED ELIWAH',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow[100],
                  child: Center(
                    child: const Text(
                      'EMAIL: hendrigeng13@gmail.com \n'
                      'UNIVERSITY: CAIRO \n'
                      'FACULTY: INFORMATION TECHNOLOGY AND INFORMATION SYSTEM\n '
                      'COURSE NAME : FLUTTER\n'
                      'PROJECT: LEVEL ONE ,CREAT TASKS\n'
                      ' all respect and thanks to ENG AHMED MEGAHED \n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              )
            ],
          ),
          // Profile image
          Positioned(
            top: 150.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/prof.jpg'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),



    );
  });
}
}