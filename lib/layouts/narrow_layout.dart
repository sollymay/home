import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class NarrowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: Text('bla'),
            ),
            body: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: EdgeInsets.all(20),
              childAspectRatio: 3 / 2,
              children: [
                Image.asset('assets/nav-drawer-1.jpg'),
                Image.asset('assets/nav-drawer-2.jpg'),
                Image.asset('assets/nav-drawer-3.jpg'),
                Image.asset('assets/nav-drawer-4.jpg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
