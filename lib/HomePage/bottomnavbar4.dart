import 'package:flutter/material.dart';

class BottomNavBar4 extends StatefulWidget {
  const BottomNavBar4({Key? key}) : super(key: key);

  @override
  _BottomNavBar4State createState() => _BottomNavBar4State();
}

class _BottomNavBar4State extends State<BottomNavBar4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(126, 144, 140, 1),
      appBar: AppBar(
        title: Text('Whistlist'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Selected',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          buildCard(),
          buildCard(),
          buildCard(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Button(Icons.delete, 'Remove', Colors.indigo[200]),
            Button(Icons.shopping_cart, 'Buy', Colors.indigo)
          ])
        ],
      ),
    );
  }
}

buildCard() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Card(
        elevation: 10,
        shadowColor: Colors.white,
        child: Container(
            height: 150,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      // flex: 2,
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
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
                            margin: EdgeInsets.only(left: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('3 Stripes Shirt',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w300)),
                                Text('Original Adiddas',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.purple)),
                                Text('\$ 80',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(right: 00),
                                  child: Text('\$ 120',
                                      style: TextStyle(
                                          color: Colors.white38,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.lineThrough)),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // padding: EdgeInsets.all(16),
                            child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.check,
                                  size: 40,
                                )),
                          ),
                        ],
                      ))
                    ],
                  )),
                ]))),
  );
}

Button(a, b, c) {
  return MaterialButton(
    onPressed: () {},
    child: Container(
      margin: EdgeInsets.only(bottom: 16),
      width: 200,
      padding: EdgeInsets.all(13),
      decoration:
          BoxDecoration(color: c, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            a,
            size: 30,
          ),
          Center(
              child: Text(
            b,
            style: TextStyle(fontSize: 25, fontFamily: 'rrr'),
          )),
        ],
      ),
    ),
  );
}
