import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Search_number extends StatelessWidget {
  const Search_number({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),

      child: Container(
         width: 400.0,
        height: 40,
       
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter CN Number",
            hintStyle: TextStyle(color: Colors.grey[400]),
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
            suffixIcon: Icon(
              Icons.search,
              color: Colors.grey[600],
            ),
            filled: true,
            fillColor: Colors.grey[100],
            isDense: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
