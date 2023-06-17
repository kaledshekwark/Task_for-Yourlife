
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskeveryday/models/TaskData.dart';
class AddTaskPage extends StatelessWidget {

  String? TaskName;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Text("AddTask"),
          TextField(
            onChanged:(value) {
              TaskName=value;
            },
          )
          ,TextButton(
              onPressed: () {

                TaskName!=null?Provider.of<TaskData>(context,listen:false).AddTask(TaskName!):null;
             Navigator.pop(context);
              } ,
              child: Text("Add Task")

          )

        ],
        
      ),
    );
  }
}
