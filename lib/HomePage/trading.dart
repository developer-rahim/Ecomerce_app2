import 'package:flutter/material.dart';

class Traddingprodect extends StatelessWidget {
  late String prodectimage;
  late String prodectname;
  late String prodectmadel;
  late double prodectprice;
  Traddingprodect(
      {this.prodectimage = 'a',
      this.prodectname = 'b',
      this.prodectmadel = 'c',
      this.prodectprice = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      margin: EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Material(
                  shape: RoundedRectangleBorder(
                      side: BorderSide.none,
                      borderRadius: BorderRadius.circular(35)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      prodectimage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text(prodectname), Text(prodectmadel)],
          ),
          MaterialButton(
            elevation: 0,
            height: 45,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            child: Text('\$ $prodectprice'),
          )
        ],
      ),
    );
  }
}
