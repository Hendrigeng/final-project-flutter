import 'package:flutter/material.dart';
import 'package:levelflutterfinal/model/attributes.dart';




class ViewModel extends ChangeNotifier {

  List<Task> tasks = <Task>[];
  User user = User("");


  void updatemyusername(String newusername) {
    user.username = newusername;
    notifyListeners();
  }





  //String get username => user.username;

  String getusername() {
    return user.username;
  }



//  int get number =>tasks.where((task) => !task.complete ).length;

  int numberofnotcom() {
    return tasks
        .where((task) => !task.complete)
        .length;
  }


////function to get completed tasks///////

  int numberofcomplete()
  {
   int x= tasks.length ;
   int y=tasks
       .where((task) => !task.complete)
       .length;

   int z=x-y;


   return z;

  }

  // int get getlinthtask => tasks.length;

  int getlenthtask() {
    return tasks.length;
  }

  void settaskvlue(int taskindex, bool taskvalue) {
    tasks[taskindex].complete = taskvalue;
    notifyListeners();
  }







  void addtask(Task newobject) {
    tasks.add(newobject);
    print(newobject);
    notifyListeners();
  }




  void deletalltasks() {
    tasks.clear();
    notifyListeners();
  }



  void delettask(int taskindex) {
    tasks.removeAt(taskindex);
    notifyListeners();
  }








  void deletcompletedtask() {
    tasks = tasks.where((task) => !task.complete).toList();
    notifyListeners();
  }


  String gettitkeoftask(int index) {
    return tasks[index].taskname;
  }



  bool getvlauoftask(int index) {
    return tasks[index].complete;

  }





void  eidittask(int index,String editask){
  tasks[index].taskname =editask;
    notifyListeners();
}






}












