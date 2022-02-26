import 'package:flutter/material.dart';

class Newarrival extends StatelessWidget {
  String text;
  Newarrival({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(00.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'rrr',
                  color: Colors.purple),
            ),
          ),
          // Text(
          //   'Show All',
          //   style: TextStyle(
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.greenAccent),
          // ),
        ],
      ),
    );
  }
}
