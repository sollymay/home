import 'package:flutter/material.dart';

class WideLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Card(color: Colors.black, child: Text('test')),
            Text('more tests')
          ],
        ),
      ),
      color: Colors.red,
    );
  }
}
