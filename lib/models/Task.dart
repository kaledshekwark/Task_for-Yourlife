
class Task{
 String NameTask;
 bool ValueCheckbox;
 Task ({required this.NameTask, this.ValueCheckbox=false});

 void changevalueCheckbox( )
 {
  ValueCheckbox=!ValueCheckbox;
 }

}
