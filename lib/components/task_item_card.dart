import 'package:flutter/material.dart';
import 'package:task_management/models/task_model.dart';

class TaskItemCard extends StatelessWidget {
  final TaskModel task;
  final Function() onPressed;
  const TaskItemCard({Key? key, required this.task, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.lightGreenAccent,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(task.taskName),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text('Yakin?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Tidak'),
                    ),
                    TextButton(
                      onPressed: onPressed,
                      child: const Text('Ya'),
                    ),
                  ],
                ),
              );
            },
            icon: Icon(Icons.delete_forever_outlined),
          ),
        ],
      ),
    );
  }
}
