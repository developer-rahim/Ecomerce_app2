import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_connect_check/HomePage/trading.dart';
import 'package:firebase_connect_check/Model/detailsScreen.dart';
import 'package:firebase_connect_check/Model/gradView.dart';
import 'package:firebase_connect_check/Model/newArrival.dart';
import 'package:firebase_connect_check/Model/tabbarview.dart';
import 'package:firebase_connect_check/data/data.dart';
import 'package:flutter/material.dart';

import '../ReviewCart/cartReview.dart';

class BottomNavBar1 extends StatefulWidget {
  const BottomNavBar1({Key? key}) : super(key: key);

  @override
  _BottomNavBar1State createState() => _BottomNavBar1State();
}

class _BottomNavBar1State extends State<BottomNavBar1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(126, 144, 140, 1),
        drawer: drawer(),
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Shopping',
                style: TextStyle(
                    color: Colors.pink, fontFamily: 'rrr', fontSize: 30),
              )
            ],
          ),
          // leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.transparent,

          actions: [
            Container(
                margin: EdgeInsets.only(right: 10),
                child: Row(children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(Icons.add)),
                  SizedBox(width: 10),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '\filterpagr');
                          },
                          child: Icon(Icons.filter_alt_rounded))),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => CartReview()));
                    },
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: Badge(
                          badgeContent: Text('0'),
                          animationDuration: Duration(microseconds: 500),
                          child: Icon(Icons.shop),
                        )),
                  )
                ]))
          ],
          bottom: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 35),
            // indicator: BoxDecoration(color: Colors.red),
            isScrollable: true,
            indicatorColor: Colors.blueGrey,
            indicatorWeight: 4.0,
            indicatorPadding: EdgeInsets.only(top: 10),
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontSize: 20, color: Colors.amberAccent),
            unselectedLabelColor: Colors.white24,
            labelColor: Colors.white,
            tabs: [
              Text('All'),
              Text('Clothe'),
              Text('Shoes'),
              Text('Accecories'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(35)),
                  margin: EdgeInsets.only(top: 16),
                  child: CarouselSlider.builder(
                      itemCount: sigleProductData.length,
                      itemBuilder: (ctx, index, realIdx) {
                        var caroseldata = sigleProductData[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                          getdata: caroseldata,
                                        )));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 300,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35)),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(35),
                                    child: Image.network(
                                      caroseldata.prodectimage,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: 16, right: 16),
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(35),
                                                bottomRight:
                                                    Radius.circular(35)),
                                            gradient: LinearGradient(
                                                colors: [
                                                  Colors.black12.withGreen(0),
                                                  Colors.black
                                                ],
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter)),
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            // first row
                                            Expanded(
                                                flex: 5,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                        child: Container(
                                                      // color: Colors.green,
                                                      child: Text(caroseldata
                                                          .prodectname),
                                                    )),
                                                    Expanded(
                                                        child: Container(
                                                      // color: Colors.pink,
                                                      child: Text(caroseldata
                                                          .prodectmodel),
                                                    )),
                                                  ],
                                                )),
                                            // second row
                                            Expanded(
                                                flex: 5,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Expanded(
                                                        child: Container(
                                                      // color: Colors.amber,
                                                      child: Text(caroseldata
                                                          .prodectprice
                                                          .toString()),
                                                    )),
                                                    Expanded(
                                                        child: Container(
                                                      // color: Colors.blue,
                                                      child: Text(
                                                        caroseldata
                                                            .prodectoldprice
                                                            .toString(),
                                                        style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough),
                                                      ),
                                                    )),
                                                  ],
                                                ))
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        height: 150,
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Newarrival(
                    text: 'New Arrival',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                GridView.builder(
                    shrinkWrap: true,
                    itemCount: sigleProductData.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      var userdata = sigleProductData[index];
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                          getdata: userdata,
                                        )));
                          },
                          child: Gradview(
                            prodectimage: userdata.prodectimage,
                            prodectmodel: userdata.prodectmodel,
                            prodectname: userdata.prodectname,
                            prodectoldprice: userdata.prodectoldprice,
                            prodectprice: userdata.prodectprice,
                          ));
                    }),
                Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                Newarrival(
                  text: 'Tradding',
                ),
                Traddingprodect(
                  prodectimage:
                      'https://n.nordstrommedia.com/id/sr3/df81197b-80d8-4932-932b-7f422c1d04c8.jpeg?h=365&w=240&dpr=2',
                  prodectname: 'Baby Care',
                  prodectmadel: 'Cottonbar',
                  prodectprice: 1020,
                ),
                SizedBox(
                  height: 16,
                ),
                Traddingprodect(
                  prodectimage:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbrYID2q9ODzFrUoOnjW_eakrvZ6ey41QNwg&usqp=CAU',
                  prodectname: 'T-Shirt',
                  prodectmadel: 'Dorjibari',
                  prodectprice: 280,
                ),
                SizedBox(
                  height: 16,
                ),
                Traddingprodect(
                  prodectimage:
                      'https://media.istockphoto.com/photos/white-sneaker-on-a-blue-gradient-background-mens-fashion-sport-shoe-picture-id1303978937?b=1&k=20&m=1303978937&s=170667a&w=0&h=az5Y96agxAdHt3XAv7PP9pThdiDpcQ3otWWn9YuJQRc=',
                  prodectname: 'Shoes',
                  prodectmadel: 'Adidss Rx',
                  prodectprice: 1600,
                ),
                SizedBox(
                  height: 16,
                ),
                Traddingprodect(
                  prodectimage:
                      'https://m.media-amazon.com/images/I/71D9ImsvEtL._UY500_.jpg',
                  prodectname: 'Adidas ',
                  prodectmadel: 'Shoes',
                  prodectprice: 1350,
                ),
                Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                Newarrival(
                  text: 'Histroy',
                ),
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
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                                    builder: (context) => DetailScreen(
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

            ////////// // 2nd Text in TabBaeview//////////
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '\deteails');
                },
                child: TabBarview()),

            ////////// // 3nd Text in TabBaeview//////////
            GridView.builder(
                shrinkWrap: true,
                itemCount: shoesData.length,
                // physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  var userdata = shoesData[index];
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      getdata: userdata,
                                    )));
                      },
                      child: Gradview(
                        prodectimage: userdata.prodectimage,
                        prodectmodel: userdata.prodectmodel,
                        prodectname: userdata.prodectname,
                        prodectoldprice: userdata.prodectoldprice,
                        prodectprice: userdata.prodectprice,
                      ));
                }),
            ////////// // 4nd Text in TabBaeview//////////
            GridView.builder(
                shrinkWrap: true,
                itemCount: accessoriesData.length,
                // physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  var userdata = accessoriesData[index];
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      getdata: userdata,
                                    )));
                      },
                      child: Gradview(
                        prodectimage: userdata.prodectimage,
                        prodectmodel: userdata.prodectmodel,
                        prodectname: userdata.prodectname,
                        prodectoldprice: userdata.prodectoldprice,
                        prodectprice: userdata.prodectprice,
                      ));
                }),
          ],
        ),
      ),
    );
  }

  drawer() {
    return Drawer(
      child: Column(
        children: [
          Stack(children: [
            Container(
              height: 110,
              color: Colors.amber,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 50,
                    child: CircleAvatar(
                        // backgroundColor: Colors.indigo,
                        radius: 45,
                        backgroundImage: AssetImage('images/rahim.jpg')),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Abdul Rahim',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'rahimsr983@gmail.com',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                )
              ],
            )
          ]),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '\Homepahe');
            },
            child:
                items(title: 'Home', leading: Icons.home, color: Colors.indigo),
          ),

          // Divider(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '\reviewcart');
            },
            child: items(
                title: 'Review Cart',
                leading: Icons.shop_outlined,
                color: Colors.purple),
          ),
          // Divider(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '\profile');
            },
            child: items(
                title: 'My Profile', leading: Icons.person, color: Colors.pink),
          ),
          // Divider(),
          items(
              title: 'Notification',
              leading: Icons.notification_add,
              color: Colors.amber),
          // Divider(),
          items(
              title: 'Rating and Review',
              leading: Icons.star,
              color: Colors.blue),
          // Divider(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '\whistlist');
            },
            child: items(
                title: 'Whistlist', leading: Icons.shop, color: Colors.brown),
          ),

          // Divider(),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact to Support',
                style: TextStyle(
                    fontSize: 30, color: Colors.indigo, fontFamily: 'rrr'),
              ),
              Text(
                ' Call: 01718663032',
                style: TextStyle(fontSize: 17, fontFamily: 'rrr'),
              ),
              Text(
                'mail: rahimsr983@gmail.com',
                style: TextStyle(fontSize: 17, fontFamily: 'rrr'),
              )
            ],
          )
        ],
      ),
    );
  }

  items({title, leading, color}) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          leading: Icon(
            leading,
            color: color,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 20, fontFamily: 'rrr'),
          ),
        ),
      ],
    );
  }
}
