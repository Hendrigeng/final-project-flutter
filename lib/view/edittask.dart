import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'welcom.dart';
import 'package:levelflutterfinal/model/attributes.dart';
import 'package:provider/provider.dart';
import 'listview.dart';
import 'package:levelflutterfinal/viewmodel/viewmodel.dart';

class edit extends StatelessWidget {
  String task;
  int index;
  final textuser = TextEditingController();

  edit({required this.index, required this.task, super.key});



  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      return AlertDialog(
        actions: <Widget>[
          TextField(
            controller: textuser,
            decoration: InputDecoration(label: Text("   TASK NAME")),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
                child: new Text("save",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    )),
                onPressed: () {
                  viewmodel.eidittask(index,textuser.text);
                  Navigator.pop(context);


                }
                ),
            TextButton(
                child: new Text("cancel",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    )),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ]),
        ],
      );
    });
  }
}
