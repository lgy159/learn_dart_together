import 'dart:io';

import '../data_source/status_data_source.dart';
import '../data_source/subway_data_source.dart';
import '../data_source/todo_data_source.dart';
import '../data_source/user_data_source.dart';


Future<void> main() async {
  final savePath = 'lib/12_data_source/assingment';

  final todoDataSource = TodoDataSource();
  // assingment 1
  final id = 1;
  final todo = todoDataSource.getTodo(id);
  final File assingment1 = File('$savePath/assingment1');
  await assingment1.writeAsString((await todo).toString());

  // assingment 2
  final todos = todoDataSource.getTodos();
  final File assingment2 = File('$savePath/assingment2');
  await assingment2.writeAsString((await todos).toString());

  // assingment 3
  final userDataSource = UserDataSource();
  final users = userDataSource.getUsers();
  final File assingment3 = File('$savePath/assingment3');
  await assingment3.writeAsString((await users).toString());

  // assingment 4
  final subwayDataSource = SubwayDataSource();
  final subways = subwayDataSource.getSubways();
  final File assingment4 = File('$savePath/assingment4');
  await assingment4.writeAsString((await subways).toString());

  // assingment 5
  final statusDataSource = StatusDataSource();
  final status = statusDataSource.getStatusAsJson();
  final File assingment5 = File('$savePath/assingment5');
  await assingment5.writeAsString((await status).toString());

  final statusAsCsv = statusDataSource.getStatusAsCsv();
  final File assingment6 = File('$savePath/assingment6');
  await assingment6.writeAsString((await statusAsCsv).toString());

  print(await assingment5.readAsString() ==
      await assingment6.readAsString()); // result : true
}
