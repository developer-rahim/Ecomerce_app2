import 'package:flutter/material.dart';

class Men_women_kids extends StatelessWidget {
  late String prodectname;
  late String prodectmadel;
  late String prdectimage;
  Men_women_kids(
      {this.prdectimage = '', this.prodectmadel = 'a', this.prodectname = 'b'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                image: NetworkImage(prdectimage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text(prodectmadel), Text(prodectname)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.arrow_forward),
            ],
          )
        ],
      ),
    );
  }
}
