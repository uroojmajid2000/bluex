import 'package:bluex/widget/Boxes.dart';
import 'package:bluex/widget/Pickup.dart';
import 'package:bluex/widget/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bluex/widget/Search_number.dart';
import 'package:bluex/widget/Amount_data.dart';
import 'package:bluex/widget/Pickup.dart';
import 'package:bluex/widget/Boxes.dart';

class Screentwentyone extends StatelessWidget {
  const Screentwentyone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Search_number(),
            detail(),
            Amount_data(
              text: 'Current Vehicle Number:None',
            ),
            Amount_data(
              text: 'Total COD Amount:Rs.0.00',
            ),
            Pickup(),


          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
