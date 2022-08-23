import 'package:bluex/cubit/checking_cubit.dart';
import 'package:bluex/widget/Checking.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class Screeneleven extends StatefulWidget {
  const Screeneleven({Key? key}) : super(key: key);

  @override
  State<Screeneleven> createState() => _ScreenelevenState();
}

class _ScreenelevenState extends State<Screeneleven> {
  final String time = DateFormat('kk:mm').format(DateTime.now());
  // String checkin = '..:..';
  // String checkout = '..:..';
  // String workinghours = '..:..';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbar'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.calendar_month, size: 25),
            ),
          ),
          SizedBox(height: 70),
          Text(time,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              )),
          Text(DateFormat('MMMMEEEEd').format(DateTime.now()),
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          SizedBox(height: 20),
          GestureDetector(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.blue,
                ),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.headphones,
                color: Colors.white,
                size: 50,
              ),
            ),
            onTap: () {
              // print("hello");
              // setState(() {
              //   if (checkin == '..:..') {
              //     checkin = time;
              //   } else {
              //     checkout = time;
              //     workinghours = time;
              //   }
              // });

              context.read<CheckingCubit>().updateTime();
               
            },
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.pin_drop,
                color: Colors.blue,
                size: 20,
              ),
              Text('You are in the office range',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  )),
            ],
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Checking(
                    icon: Icons.alarm,
                    timeone: context.watch<CheckingCubit>().state.checkin,
                    text: 'Checkin'),
                Checking(
                    icon: Icons.alarm_add_sharp,
                    timeone: context.watch<CheckingCubit>().state.checkout,
                    text: 'Checkout'),
                Checking(
                    icon: Icons.alarm_on_outlined,
                    timeone: context.watch<CheckingCubit>().state.workinghours,
                    text: 'working hour'),
              ],
            ),
          ),
          SizedBox(height: 50),
        ],
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
