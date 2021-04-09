import 'package:flutter/material.dart';

class NarrowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Card(color: Colors.black, child: Text('test')),
          Text('more tests')
        ],
      ),
    );
  }
}
