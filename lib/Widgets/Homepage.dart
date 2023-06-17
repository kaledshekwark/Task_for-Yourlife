import 'package:flutter/material.dart';
import 'package:taskeveryday/Widgets/AddTaskPage.dart';
import 'package:taskeveryday/Widgets/ShowTask.dart';
import 'package:provider/provider.dart';
import 'package:taskeveryday/models/TaskData.dart';
class HomePageTask extends StatelessWidget {
  const HomePageTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     backgroundColor: Colors.teal[400],
      appBar: AppBar(backgroundColor: Colors.teal[400],
      title:Text("My Daily Tasks",
          style: TextStyle(fontWeight:FontWeight.bold,
              fontSize:20,color: Colors.white))
        ,centerTitle: true,
      ),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
          Text( "${Provider.of<TaskData>(context).MyTask.length}", style: TextStyle(fontWeight:FontWeight.bold,fontSize:20,color: Colors.white),)
        ,
            Expanded(child: Container(

              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius:BorderRadius.all(Radius.circular(50))

              ),

                child:ShowTask(),

            ))
            ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() => showModalBottomSheet(context: context,
          isScrollControlled: true, builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child:AddTaskPage(),

            ),

          );
        },),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


