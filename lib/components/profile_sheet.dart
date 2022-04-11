import 'package:flutter/material.dart';

class ProfileSheet extends StatelessWidget {
  const ProfileSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/cj.jpg'),
          ),
          SizedBox(height: 16),
          Text('Carl Johnson'),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Task Completed'),
              const Icon(
                Icons.chevron_right_rounded,
                size: 30,
              )
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Goals'),
              const Icon(
                Icons.chevron_right_rounded,
                size: 30,
              )
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Settings'),
              const Icon(
                Icons.chevron_right_rounded,
                size: 30,
              )
            ],
          ),
          SizedBox(height: 16),
          ElevatedButton(onPressed: () {}, child: Text('Log Out'))
        ],
      ),
    );
  }
}
