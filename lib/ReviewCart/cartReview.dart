import 'package:flutter/material.dart';

class CartReview extends StatefulWidget {
  const CartReview({Key? key}) : super(key: key);

  @override
  _CartReviewState createState() => _CartReviewState();
}

class _CartReviewState extends State<CartReview> {
  // bool istrue = false;
  var count = 1;
  bool isTrue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ListTile(
          title: Text("Total Amount"),
          subtitle: Text('\$ 170'),
          trailing: MaterialButton(
            onPressed: () {},
            child: Container(
              height: 80,
              // padding: EdgeInsets.all(5),
              // margin: EdgeInsets.only(bottom: 10),
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(35)),
              child: Center(
                  child: Text(
                'Submit',
                style: TextStyle(fontSize: 25, fontFamily: 'rrr'),
              )),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Cart Review"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            items(
                name: 'Shoes',
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRryFaJnyHn42iSCda9NjSihrUzfW_cASQdBg&usqp=CAU',
                price: '\$ 50'),
            SizedBox(
              height: 25,
            ),
            items(
                name: 'Baby Cades',
                image:
                    'https://image.made-in-china.com/202f0j00EoFRKQnMlckA/Stylish-Outdoor-Kids-Sneakers-Shoes-High-Quality-Breathable-Material-Boys-Girls-Kid-Shoe.jpg',
                price: '\$ 33'),
            SizedBox(
              height: 25,
            ),
            items(
                name: 'Stylish Caps',
                image:
                    'https://image.made-in-china.com/2f0j00OSLfMZndGGkB/2020-Wholesale-Trucker-Cap-Golf-Caps-Men-Outdoor-Unisex-Baseball-Sport-Hat.jpg',
                price: '\$ 41'),
            SizedBox(
              height: 25,
            ),
            items(
                name: 'Shirts',
                image:
                    'https://cdn.luxe.digital/media/2019/12/16162209/best-men-online-shopping-jcrew-luxe-digital.jpg',
                price: '\$ 35')
          ],
        ));
  }

  items({name, image, price}) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(image),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(name), Text(price)],
          ),
          trailing: MaterialButton(
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
                            child: Text(
                              '-',
                              // style: TextStyle(fontSize: 50),
                            ),
                          ),
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
        )
      ],
    );
  }
}
