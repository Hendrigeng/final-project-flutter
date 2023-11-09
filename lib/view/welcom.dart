import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levelflutterfinal/view/addtask.dart';
import 'package:levelflutterfinal/view/listview.dart';
import 'dashbord.dart';
import 'profile.dart';
import 'edittask.dart';
import 'package:provider/provider.dart';
import 'package:flutter/rendering.dart';
import 'package:levelflutterfinal/viewmodel/viewmodel.dart';

class welc extends StatelessWidget {
   welc({super.key});


  @override
  Widget build(BuildContext context) {

    final TextEditingController entryController = TextEditingController();
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      //--------------welcome and task screen main screen---------------//

      return Scaffold(
          body: Container(
        color: Colors.yellow[100],
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 10, left: 2.0, right: 5.0),



        child: Column(
          children: [
            // ------------dashbord button pge - welcome - profile page button----------------//

            Container(padding:EdgeInsets.only(left: 5),
              height: 100,
              child: Row(
                children: [

                  //-------------button navigate to dashdoard----------//
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => dash()));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                      ),
                      child: Text("INFOR")),
                 // SizedBox(width: 5),
                  Container(

                    //------user name text ---------------------------//

                    child:  Container(height: 50,width: 230,
                      child: Text(  maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,

                        '  Welcome MRS: \n'
                       '  ${viewmodel.getusername()}\n ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  SizedBox(width:5),

                  //---------button profile to navigate to profile page ----//

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => prof()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: Text("PROF"),
                  )
                ],
              ),
            ),
            //--------------task line check check box and delete and eidt button-----------//

            Expanded(
              flex: 6,
              child: listview(),
            ),


// ---------------FLOATING button to add task and navigate to task screen---------//
            addtask(),
          ],
        ),
      ));
    });
  }
}
