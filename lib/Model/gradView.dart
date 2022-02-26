import 'package:flutter/material.dart';

class Gradview extends StatefulWidget {
  late String prodectname;
  late String prodectmodel;
  late String prodectimage;
  late double prodectprice;
  late double prodectoldprice;
  Gradview(
      {this.prodectname = 'a',
      this.prodectmodel = 'b',
      this.prodectimage = 'c',
      this.prodectprice = 0.0,
      this.prodectoldprice = 0.0});

  @override
  State<Gradview> createState() => _GradviewState();
}

class _GradviewState extends State<Gradview> {
  var count = 1;
  bool isTrue = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(35)),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: NetworkImage(widget.prodectimage),
                      fit: BoxFit.cover)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.prodectname}.. ..'.substring(1, 10),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    widget.prodectmodel,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('\$ ${widget.prodectprice}'),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    '\$ ${widget.prodectoldprice}',
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
              // height: 45,
              // padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(bottom: 10),
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(35)),
              child: Center(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    isTrue = false;
                  });
                },
                child: isTrue
                    ? Text(
                        'Add Cart',
                        style: TextStyle(fontSize: 25, fontFamily: 'rrr'),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  if (count >= 1) count--;
                                });
                                if (count == 0) {
                                  isTrue = true;
                                }
                              },
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 12),
                                  child: Icon(Icons.minimize_outlined))),
                          Text('${count}'),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  count++;
                                });
                              },
                              icon: Icon(Icons.add))
                        ],
                      ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
