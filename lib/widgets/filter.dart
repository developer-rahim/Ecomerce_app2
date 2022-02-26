import 'package:firebase_connect_check/Model/dropdownBotton.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filtter Your Prodect',
          style: TextStyle(fontFamily: 'rrr', fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            filtter(title: 'Most Popular'),
            Divider(),
            filtter(title: 'Price Low To High'),
            Divider(),
            filtter(title: 'Price Hige To Low'),
            Divider(),
            filtter(title: 'New Items'),
            Divider(),
            ExpansionTile(
                children: [
                  GridView.count(
                    crossAxisCount: 5,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 2.4,
                    physics: NeverScrollableScrollPhysics(),
                    primary: true,
                    shrinkWrap: true,
                    children: [
                      sizecounte(number: 5.toString()),
                      sizecounte(number: 5.5.toString()),
                      sizecounte(number: 6.toString()),
                      sizecounte(number: 6.5.toString()),
                      sizecounte(number: 7.toString()),
                      sizecounte(number: 7.5.toString()),
                      sizecounte(number: 8.toString()),
                      sizecounte(number: 8.5.toString()),
                      sizecounte(number: 9.toString()),
                      sizecounte(number: 9.5.toString()),
                      sizecounte(number: 10.toString()),
                      sizecounte(number: 10.5.toString()),
                      sizecounte(number: 11.toString()),
                    ],
                  )
                ],
                title: Text(
                  'Size',
                  style: TextStyle(
                      fontFamily: 'rrr',
                      fontSize: 25,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                )),
            Divider(),
            ExpansionTile(
                children: [
                  GridView.count(
                    crossAxisCount: 5,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 2.4,
                    physics: NeverScrollableScrollPhysics(),
                    primary: true,
                    shrinkWrap: true,
                    children: [
                      sizecounte(
                        color: Colors.white,
                        containercolor: false,
                        // number: ''
                      ),
                      sizecounte(
                        color: Colors.green,
                        containercolor: false,
                        // number: ''
                      ),
                      sizecounte(
                        color: Colors.blue,
                        containercolor: false,
                        // number: ''
                      ),
                    ],
                  )
                ],
                title: Text(
                  'Color',
                  style: TextStyle(
                      fontFamily: 'rrr',
                      fontSize: 25,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                )),
            Divider(),
            ExpansionTile(
                children: [
                  ListTile(
                    title: Wrap(children: [
                      Container(
                        height: 56,
                        child: Column(
                          children: [
                            Expanded(
                              child: Dropdown(
                                hinttext: "gender",
                                itenm: ['Men', 'Women', 'Kids'],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                  )
                ],
                title: Text(
                  'Gender',
                  style: TextStyle(
                      fontFamily: 'rrr',
                      fontSize: 25,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold),
                )),
            Divider(),
            ExpansionTile(
                children: [
                  ListTile(
                    title: Wrap(children: [
                      Container(
                        height: 56,
                        child: Column(
                          children: [
                            Expanded(
                              child: Dropdown(
                                hinttext: "Catagories",
                                itenm: ['Cloth', 'Shoes', 'Accociate'],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                  )
                ],
                title: Text(
                  'Catagories',
                  style: TextStyle(
                      fontFamily: 'rrr',
                      fontSize: 25,
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold),
                )),
            Divider(),
            ExpansionTile(
                children: [Rangeslider()],
                title: Text(
                  'Price',
                  style: TextStyle(
                      fontFamily: 'rrr',
                      fontSize: 25,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}

filtter({title}) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(fontSize: 22, fontFamily: 'rrr'),
    ),
  );
}

sizecounte({number, bool containercolor = true, color}) {
  return Container(
      // margin: EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: containercolor ? Colors.black12 : color,
          borderRadius: BorderRadius.circular(10)),
      child: containercolor
          ? Text(
              number,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          : Container());
}

class Rangeslider extends StatefulWidget {
  const Rangeslider({Key? key}) : super(key: key);

  @override
  _RangesliderState createState() => _RangesliderState();
}

class _RangesliderState extends State<Rangeslider> {
  RangeValues _currentRangvalue = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RangeSlider(
          values: _currentRangvalue,
          max: 1000,
          min: 30,
          labels: RangeLabels(_currentRangvalue.start.round().toString(),
              _currentRangvalue.end.round().toString()),
          onChanged: (ValueKey) {
            setState(() {
              _currentRangvalue = ValueKey;
            });
          },
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$ ${_currentRangvalue.start.toInt().toString()}',
                  style: TextStyle(fontSize: 20, fontFamily: 'rrr')),
              Text('\$ ${_currentRangvalue.end.toInt().toString()}',
                  style: TextStyle(fontSize: 20, fontFamily: 'rrr')),
            ],
          ),
        )
      ],
    );
  }
}
