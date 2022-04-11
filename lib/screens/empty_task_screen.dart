import 'package:flutter/material.dart';

class EmptyTaskScreen extends StatelessWidget {
  const EmptyTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage('assets/empty_task.jpg'),
            height: 250,
          ),
          Text('Task Masih Kosong...')
        ],
      ),
    );
  }
}
