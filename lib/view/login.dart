import 'package:flutter/material.dart';
import 'package:levelflutterfinal/model/attributes.dart';
import 'welcom.dart';
import 'package:provider/provider.dart';
import 'package:levelflutterfinal/viewmodel/viewmodel.dart';

class app extends StatelessWidget {
  app({super.key});
  bool _isObscure = true;
  final textuser = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      return Scaffold(
          body: SafeArea(
        child: Container(
          color: Colors.yellow[100],
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              //------------------------program picture-------------------//

              CircleAvatar(
                maxRadius: 100,
                backgroundImage: AssetImage('images/lun.png'),
                backgroundColor: Colors.green,
              ),
              SizedBox(
                height: 20,
              ),

              //label and name of program-------------------------//

              Container(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.white, Colors.yellow]),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.handshake),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "CREAT TASKS",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ])),
              SizedBox(
                height: 5,
              ),

              //-------------------username-------------//

              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.white, Colors.yellow]),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: TextField(
                  controller: textuser,
                  decoration: InputDecoration(
                    hintText: "  USERNAME ",
                  ),
                ),
              ),
              SizedBox(
                height:5,
              ),

              //---------------------password-----------------------//

              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.white, Colors.yellow]),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: TextField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                      //labelText: 'PASSWORD',
                      hintText: " PASSWORD ",
                      // this button is used to toggle the password visibility
                      suffixIcon: IconButton(
                          icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {

                              _isObscure = !_isObscure;

                          })),
                ),
              ),
           //   SizedBox(
               // height: 10,
             // ),

              //-----------------loginbutton-------------------------//

              ElevatedButton(
                  onPressed: () {

                    viewmodel.updatemyusername(textuser.text);
                    textuser.clear();

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => welc()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  child: Text(
                    "LOGIN",
                  )),
            ],
          ),
        ),
      ));
    });
  }
}
