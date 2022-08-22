import 'package:bluex/widget/boxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pickup extends StatelessWidget {
  const Pickup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Choice> choices = const <Choice>[
      const Choice(title: 'Home', icon: Icons.home),
      const Choice(title: 'Contact', icon: Icons.contacts),
      const Choice(title: 'Map', icon: Icons.map),
      const Choice(title: 'Phone', icon: Icons.phone),
      const Choice(title: 'Camera', icon: Icons.camera_alt),
      const Choice(title: 'Setting', icon: Icons.settings),
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: GridView.builder(
          physics: ScrollPhysics(),
          itemCount: 6,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            childAspectRatio: 3 / 2,
          ),
          itemBuilder: (context, index) {
            return Boxes(
                title: choices[index].title, icon: choices[index].icon);
          }),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}
