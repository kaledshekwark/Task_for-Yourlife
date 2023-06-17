import 'package:flutter/material.dart';

class ListTileTask extends StatelessWidget {
  final  String NameTask;
  final Function(bool?)? Onpreesdbool;
  final  bool vlaueChecckbox;
  final Function()? DeletTask;


  ListTileTask({ required this.vlaueChecckbox,
    required this.NameTask, this.Onpreesdbool,this.DeletTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title:Text(NameTask ,
        style: TextStyle(
            fontWeight:FontWeight.bold,fontSize: 20
        ,decoration:vlaueChecckbox==true?TextDecoration.lineThrough:null
      ),),

      trailing:Checkbox(

          value:vlaueChecckbox,
           onChanged:Onpreesdbool

      ),
      onLongPress:DeletTask,
    );
  }
}
