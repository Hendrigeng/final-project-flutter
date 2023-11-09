import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levelflutterfinal/view/alertdailog.dart';
import 'package:provider/provider.dart';
import 'edittask.dart';
import 'package:levelflutterfinal/viewmodel/viewmodel.dart';
import 'package:levelflutterfinal/model/attributes.dart';

import 'welcom.dart';
class listview extends StatelessWidget {
  listview({super.key});

  final textuser = TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      return Container(
          decoration: BoxDecoration( color: Colors.green,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30),bottom:Radius.circular(30) )),
          child: ListView.separated(

            padding: EdgeInsets.all(15),
            separatorBuilder: (context, index) {
              return SizedBox(height: 10);
            },
            itemCount: viewmodel.getlenthtask(), //opration//
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  viewmodel.delettask(index);

                },
                background: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Icon(Icons.delete, color: Colors.red.shade700)),
                ),
                child: Container(
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      side: BorderSide(width: 2),
                      checkColor: Colors.cyan,
                      activeColor: Colors.yellow,
                      value: viewmodel.getvlauoftask(index),
                      onChanged: (value) {
                        viewmodel.settaskvlue(index, value!);
                      },
                    ),
                    title: Text(viewmodel.gettitkeoftask(index),
                        style: TextStyle(

                            fontSize: 17, fontWeight: FontWeight.w500)),

                    trailing: Wrap(
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),color: Colors.black,
                          onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>edit(index:index,task:textuser.text )
                              ));

                          },
                        ),       IconButton(
                          icon: Icon(Icons.delete),color: Colors.black,
                          onPressed: () { viewmodel.delettask(index); }
                              ),
                      ],
                    ),),),);},
          )
      );
    });
  }
}
