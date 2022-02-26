import 'package:firebase_connect_check/Model/dropdownBotton.dart';
import 'package:firebase_connect_check/Model/gradView.dart';
import 'package:firebase_connect_check/Model/newArrival.dart';
import 'package:firebase_connect_check/data/data.dart';
import 'package:firebase_connect_check/data/model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  late SingleProductModel getdata;
  DetailScreen({required this.getdata});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(126, 144, 140, 1),
        appBar: AppBar(
          title: Text(
            'Details Of Prodect',
            style: TextStyle(color: Colors.blueGrey, fontSize: 25),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 16, bottom: 20),
              child:
                  ListView(shrinkWrap: true, physics: BouncingScrollPhysics(),
                      // physics: NeverScrollableScrollPhysics(),
                      children: [
                    ListTile(
                      leading: Container(
                        child: Image.network(
                          widget.getdata.prodectfourimage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.getdata.prodectname),
                          Text(widget.getdata.prodectmodel),
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Text('\$ ${widget.getdata.prodectprice.toString()}'),
                          Text(
                            '\$ ${widget.getdata.prodectoldprice.toString()}',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 250,
                          padding: EdgeInsets.all(16),
                          width: double.infinity,
                          child: Image(
                            image:
                                NetworkImage(widget.getdata.prodectfourimage),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                height: 200,
                                padding: EdgeInsets.all(16),
                                child: Image.network(
                                  widget.getdata.prodectfourimage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              height: 200,
                              padding: EdgeInsets.all(16),
                              child: Image.network(
                                widget.getdata.prodectthirdimage,
                                fit: BoxFit.cover,
                              ),
                            )),
                            Expanded(
                                child: Container(
                              height: 200,
                              padding: EdgeInsets.all(16),
                              child: Image.network(
                                widget.getdata.prodectsecendimage,
                                fit: BoxFit.cover,
                              ),
                            )),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 81,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Dropdown(
                              itenm: ['Red', 'Blue', 'White', 'Purple'],
                              hinttext: 'Choose Color',
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: Dropdown(
                                itenm: ['2XL', 'XL', 'L', 'M', 'S'],
                                hinttext: 'Choose Size',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 16,
                    // ),
                    MaterialButton(
                      onPressed: () {},
                      child: Container(
                        // height: 45,
                        padding: EdgeInsets.all(10),
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(35)),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/payment');
                          },
                          child: Center(
                              child: Text(
                            'Add Cart',
                            style: TextStyle(fontSize: 25, fontFamily: 'rrr'),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [],
                    ),
                    ExpansionTile(
                      title: Text('Description'),
                      children: [
                        ListTile(
                          title: Wrap(children: [
                            Text(
                                '''This Prodect is 100% pure demension. It suitable for You and your children.
we delivery our product in 24 hours. you can truted our product. We are not belive in busness. We belive in customer support.
if we gain the love of customer trusted. We can go as far as long. We can not any consider with the quality of product.'''),
                          ]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Material',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                '84%Nylon',
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Text('14% Elatested'),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Size'), Text('2XL , XL , L , M')],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Province'), Text('Balochistan')],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Country'), Text('Bangladesh')],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Newarrival(text: 'You may also like'),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 240,
                            child: GridView.builder(
                                itemCount: sigleProductData.length,
                                shrinkWrap: true,
                                primary: true,
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 1,
                                        childAspectRatio: 1.2,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10),
                                itemBuilder: (context, index) {
                                  var userdata = sigleProductData[index];
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailScreen(
                                                    getdata: userdata,
                                                  )));
                                    },
                                    child: Gradview(
                                      prodectimage: userdata.prodectfourimage,
                                      prodectmodel: userdata.prodectmodel,
                                      prodectname: userdata.prodectname,
                                      prodectoldprice: userdata.prodectoldprice,
                                      prodectprice: userdata.prodectprice,
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          ]),
        ));
  }
}
