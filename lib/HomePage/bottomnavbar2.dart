import 'package:firebase_connect_check/Model/detailsScreen.dart';
import 'package:firebase_connect_check/Model/gradView.dart';
import 'package:firebase_connect_check/Model/men_women_kids.dart';
import 'package:firebase_connect_check/Model/newArrival.dart';
import 'package:firebase_connect_check/Model/subcatagories.dart';
import 'package:firebase_connect_check/data/catagories.dart';
import 'package:firebase_connect_check/data/data.dart';
import 'package:firebase_connect_check/data/model.dart';
import 'package:flutter/material.dart';

class BottomNavBar2 extends StatefulWidget {
  @override
  _BottomNavBar2State createState() => _BottomNavBar2State();
}

class _BottomNavBar2State extends State<BottomNavBar2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(126, 144, 140, 1),
        appBar: AppBar(
          title: Text(
            'All Catagories Show',
            style: TextStyle(fontFamily: 'rrr', fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(211, 171, 171, 0),
          leading: Icon(Icons.menu),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10, top: 15),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.filter_alt_rounded),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 25,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                  )
                ],
              ),
            )
          ],
          elevation: 0.0,
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
              Text('Men'),
              Text('Women'),
              Text('Kids'),
            ],
          ),
        ),
        body: TabBarView(children: [
          //This   page is for All catagories
          ListView(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 16, top: 16, right: 16),
                  child: Newarrival(text: 'Cloth')),
              SizedBox(
                height: 16,
              ),
              allcatagories(colothsData),
              Container(
                  margin: EdgeInsets.only(left: 16, top: 16, right: 16),
                  child: Newarrival(text: 'Shoes')),
              SizedBox(
                height: 16,
              ),
              allcatagories(shoesData),
              Container(
                  margin: EdgeInsets.only(left: 16, top: 16, right: 16),
                  child: Newarrival(text: 'Accessories')),
              SizedBox(
                height: 16,
              ),
              allcatagories(accessoriesData),
            ],
          ),
          //this page for Men catagories
          listViewdata(mencatagoriesData),
          //This page for Women catagories
          listViewdata(womencatagoriesData),
          //This page is for Kids catagories
          listViewdata(kidscatagoriesData)
        ]),
      ),
    );
  }
}

listViewdata(List<SingleProductModel> demoListname) {
  return ListView.builder(
      itemCount: demoListname.length,
      itemBuilder: (context, index) {
        Divider();
        var datademolistname = demoListname[index];

        return Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          // color: index.isEven ? Colors.pink[200] : Colors.purple[200],

          child: GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Subcatagories(
                              prodectmodel: datademolistname.prodectmodel,
                              prodectname: datademolistname.prodectname,
                              demolist: colothsData,
                            )));
              } else if (index == 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Subcatagories(
                              prodectmodel: datademolistname.prodectmodel,
                              prodectname: datademolistname.prodectname,
                              demolist: shoesData,
                            )));
              } else if (index == 2) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Subcatagories(
                              prodectmodel: datademolistname.prodectmodel,
                              prodectname: datademolistname.prodectname,
                              demolist: accessoriesData,
                            )));
              }
            },
            child: Card(
              shadowColor: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Men_women_kids(
                prdectimage: datademolistname.prodectimage,
                prodectmadel: datademolistname.prodectmodel,
                prodectname: datademolistname.prodectname,
              ),
            ),
          ),
        );
      });
}

allcatagories(List<SingleProductModel> singleProdect) {
  return Container(
    height: 250,
    margin: EdgeInsets.all(16),
    child: GridView.builder(
        itemCount: singleProdect.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: .9,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          var data = singleProdect[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(getdata: data)));
            },
            child: Gradview(
              prodectname: data.prodectname,
              prodectmodel: data.prodectmodel,
              prodectoldprice: data.prodectoldprice,
              prodectprice: data.prodectprice,
              prodectimage: data.prodectimage,
            ),
          );
        }),
  );
}
