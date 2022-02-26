import 'package:firebase_connect_check/Model/dropdownBotton.dart';
import 'package:flutter/material.dart';

class BottomNavBar3 extends StatefulWidget {
  const BottomNavBar3({Key? key}) : super(key: key);

  @override
  _BottomNavBar3State createState() => _BottomNavBar3State();
}

class _BottomNavBar3State extends State<BottomNavBar3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(126, 144, 140, 1),
        appBar: AppBar(
            title: Text(
              'Shopping Cart',
              style: TextStyle(fontFamily: 'rrr', fontSize: 30),
            ),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            actions: [
              Container(
                margin: EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(Icons.delete)
                  ],
                ),
              )
            ]),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Your Shopping Bag', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 16),
                    Text('You have 3 items in yours bag'),
                  ]),
            ),
            buildCard(),
            buildCard(),
            buildCard(),
            buildCard(),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white24,
                    ),
                    child: Text('12345'),
                  )),
                  MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.all(20),
                      color: Colors.pink,
                      child: Text('Employe'),
                      onPressed: () {})
                ],
              ),
            ),
            ListTile(
              title: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Amount',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Your total amount of discount'),
                  ],
                ),
              ),
              trailing: Column(
                children: [
                  Text('\$ 130'),
                  SizedBox(
                    height: 16,
                  ),
                  Text('\$ -30')
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/payment');
              },
              child: Container(
                // height: 45,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(bottom: 10),
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(35)),
                child: Center(
                    child: Text(
                  'CheckOut',
                  style: TextStyle(fontSize: 25, fontFamily: 'rrr'),
                )),
              ),
            ),
          ],
        ));
  }
}

buildCard() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Card(
        elevation: 10,
        shadowColor: Colors.white,
        child: Container(
            height: 200,
            child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                              // flex: 2,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: NetworkImage(
                                          'https://qph.fs.quoracdn.net/main-qimg-cacd0f8519187469703dafd4ef13060b.webp'),
                                    )),
                                  ))),
                          Expanded(
                              flex: 2,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('3 Stripes Shirt',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w900)),
                                    Text('Original Adiddas',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.purple)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('\$ 80',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: Text('\$ 120',
                                              style: TextStyle(
                                                  color: Colors.white38,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  decoration: TextDecoration
                                                      .lineThrough)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )),
                          Expanded(
                              child: Container(
                            // padding: EdgeInsets.all(16),
                            child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.check,
                                  size: 40,
                                )),
                          ))
                        ],
                      )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: Dropdown(
                        hinttext: 'Size',
                        itenm: ['2XL', 'XL', 'L', 'M'],
                      )),
                      Expanded(
                          child: Dropdown(
                        hinttext: 'Colors',
                        itenm: ['White', 'Black', 'Blue', 'Red'],
                      )),
                      Expanded(
                          child: Dropdown(
                        hinttext: 'Quentity',
                        itenm: ['1', '2', '3', '4', '5', '6', '7'],
                      ))
                    ],
                  ))
                ]))),
  );
}
