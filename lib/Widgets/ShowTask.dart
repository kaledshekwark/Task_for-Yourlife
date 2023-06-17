import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskeveryday/models/TaskData.dart';
import 'package:taskeveryday/Widgets/ListTileTask.dart';
class ShowTask extends StatelessWidget {
  const ShowTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer<TaskData>(builder: (context, value, child)
    {

      return ListView.builder(
        itemCount:value.MyTask.length,
        itemBuilder:(context, index)

      {

        return ListTileTask(NameTask: value.MyTask[index].NameTask
            ,vlaueChecckbox: value.MyTask[index].ValueCheckbox,
            Onpreesdbool:(p0) {
              value.UpDateTask(value.MyTask[index]);
            },

          DeletTask: () {
            value.DeletTask(value.MyTask[index]);
          },
        );

      },
    );


    },);
  }
}
