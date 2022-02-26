import 'package:firebase_connect_check/Model/detailsScreen.dart';
import 'package:firebase_connect_check/Model/gradView.dart';
import 'package:firebase_connect_check/data/model.dart';
import 'package:flutter/material.dart';

class Subcatagories extends StatefulWidget {
  late String prodectname;
  late String prodectmodel;
  List<SingleProductModel> demolist = [];
  Subcatagories(
      {this.prodectname = '', this.prodectmodel = '', required this.demolist});

  @override
  State<Subcatagories> createState() => _SubcatagoriesState();
}

class _SubcatagoriesState extends State<Subcatagories> {
  var isSelect;
  List<bool> isSelected = [true, false, false];
  FocusNode focusNodeButton1 = FocusNode();
  FocusNode focusNodeButton2 = FocusNode();
  FocusNode focusNodeButton3 = FocusNode();

  List<FocusNode> focuseToggle = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focuseToggle = [focusNodeButton1, focusNodeButton2, focusNodeButton3];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    focusNodeButton1.dispose();
    focusNodeButton2.dispose();
    focusNodeButton3.dispose();
  }

  Widget buildToggleButtons() {
    return ToggleButtons(
      borderWidth: 0,
      focusColor: null,
      fillColor: Colors.transparent,
      selectedColor: Colors.indigo,
      disabledColor: Colors.black26,
      focusNodes: focuseToggle,
      borderColor: Colors.transparent,
      children: [
        Icon(Icons.grid_view),
        Icon(Icons.view_agenda_outlined),
        Icon(Icons.crop_landscape_sharp),
      ],
      onPressed: (index) {
        if (index == 0) {
          setState(() {
            isSelect = 1;
          });
        } else if (index == 1) {
          setState(() {
            isSelect = 2;
          });
        } else if (index == 2) {
          setState(() {
            isSelect == 3;
          });
        }
        setState(() {
          for (int buttonindex = 0;
              buttonindex < isSelected.length;
              buttonindex++) {
            if (buttonindex == index) {
              isSelected[buttonindex] = true;
            } else {
              isSelected[buttonindex] = false;
            }
          }
        });
      },
      isSelected: isSelected,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Catagories'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Icon(Icons.settings),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.shopping_cart)
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.prodectmodel,
                style: TextStyle(fontSize: 40, fontFamily: 'rrr'),
              ),
              Text('1020 Prodects',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'rrr',
                  )),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Icon(
                    Icons.list_alt_sharp,
                    size: 35,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(widget.prodectname, style: TextStyle(fontSize: 20)),
                  SizedBox(width: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [buildToggleButtons()],
                  )
                ],
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: widget.demolist.length,
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: isSelect == 1
                          ? 2
                          : isSelect == 2
                              ? 1
                              : isSelect == 3
                                  ? 2
                                  : 2,
                      childAspectRatio: isSelect == 1
                          ? 0.7
                          : isSelect == 2
                              ? 1.7
                              : isSelect == 1
                                  ? 1
                                  : 0.7,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    var userdata = widget.demolist[index];
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
      ),
    );
  }
}
