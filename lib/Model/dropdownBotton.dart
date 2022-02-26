import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  final List<String> itenm;
  late String ratingcontrol;
  final String hinttext;
  Dropdown({required this.itenm, this.hinttext = '', this.ratingcontrol = ''});
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        DropdownButtonFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(36),
                  borderSide: BorderSide.none)),
          items: widget.itenm.map((e) {
            return DropdownMenuItem(value: e, child: Text(e));
          }).toList(),
          onChanged: (_value) {
            setState(() {
              widget.ratingcontrol = _value.toString();
            });
          },
          hint: Text(
            widget.hinttext,
            style: TextStyle(fontSize: 20, fontFamily: 'rrr'),
          ),
        ),
        // Text(
        //   widget.ratingcontrol,
        //   style: TextStyle(fontSize: 25, fontFamily: 'rrr'),
        // ),
      ])),
    );
  }
}
