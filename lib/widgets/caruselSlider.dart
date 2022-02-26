import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_connect_check/data/data.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider.builder(
          itemCount: sigleProductData.length,
          itemBuilder: (ctx, index, realIdx) {
            var caroseldata = sigleProductData[index];
            return Container(
              width: double.infinity,
              height: 300,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(35)),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)),
                child: Stack(
                  children: [
                    ClipRRect(
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
                          padding: EdgeInsets.only(left: 16, right: 16),
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: Container(
                                        // color: Colors.green,
                                        child: Text(caroseldata.prodectname),
                                      )),
                                      Expanded(
                                          child: Container(
                                        // color: Colors.pink,
                                        child: Text(caroseldata.prodectmodel),
                                      )),
                                    ],
                                  )),
                              // second row
                              Expanded(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Expanded(
                                          child: Container(
                                        // color: Colors.amber,
                                        child: Text(caroseldata.prodectprice
                                            .toString()),
                                      )),
                                      Expanded(
                                          child: Container(
                                        // color: Colors.blue,
                                        child: Text(
                                          caroseldata.prodectoldprice
                                              .toString(),
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough),
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
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            height: 150,
          )),
    );
  }
}
