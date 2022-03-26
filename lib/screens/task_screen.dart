import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/models/task_manager.dart';
import 'package:task_management/screens/empty_task_screen.dart';
import 'package:task_management/screens/task_item_screen.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Task Management'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.people))],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            final manager = Provider.of<TaskManager>(context, listen: false);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TaskItemScreen(onCreate: (task) {
                          manager.addTask(task);
                          Navigator.pop(context);
                        })));
          }),
      body: buildTaskScreen(),
    );
  }

  Widget buildTaskScreen() {
    return Consumer<TaskManager>(builder: (context, manager, child) {
      if (manager.taskModels.isNotEmpty) {
        return Container();
      } else {
        return EmptyTaskScreen();
      }
    });
  }
}
