import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:levelflutterfinal/viewmodel/viewmodel.dart';

class dash extends StatelessWidget {
  const dash({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              "TO DO DASH BOARD",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w800),
            ),
          ),
          body: SafeArea(
            child: Container(
              color: Colors.yellow[100],
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  SizedBox(height: 20),

                  //----------total task--and number ---------//

                  Container(
                      height: 50,
                      padding: EdgeInsets.all(10),
                      width: 300,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, Colors.yellow]),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.blue)),
                      child: Text("TOTAL TASK",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ))),
                  SizedBox(
                    height: 5,
                  ),

                  Container(
                    height: 100,
                    padding: EdgeInsets.all(30),
                    width: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, Colors.yellow]),
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.blue)),
                    child: Text("   ${viewmodel.getlenthtask()}    ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //-----------complete task-and number---------//

                  Container(
                      height: 50,
                      padding: EdgeInsets.all(10),
                      width: 300,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, Colors.yellow]),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.blue)),
                      child: Text("COMPLETE TASK",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(30),
                    width: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, Colors.yellow]),
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.blue)),
                    child: Text("${viewmodel.numberofcomplete()}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //-----------non-complete task--and number ---------//

                  Container(
                      height: 50,
                      padding: EdgeInsets.all(10),
                      width: 300,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, Colors.yellow]),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.blue)),
                      child: Text("NON -COMPLETE TASK",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(30),
                    width: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, Colors.yellow]),
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.blue)),
                    child: Text(" ${viewmodel.numberofnotcom()} ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  ),
                  SizedBox(height: 10),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      child: Text(
                        "back",
                      )),
                ],
              ),
            ),
          ));
    });
  }
}
