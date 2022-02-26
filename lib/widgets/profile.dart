import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Profile ',
            style: TextStyle(fontFamily: 'rrr', fontSize: 30),
          ),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: ListView(children: [
          Container(
            margin: EdgeInsets.all(16),
            child: Card(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none),
              elevation: 10,
              shadowColor: Colors.white,
              child: Container(
                height: 150,
                padding: EdgeInsets.only(left: 40, right: 100),
                // margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    gradient: SweepGradient(
                        colors: [
                          Colors.pink,
                          Colors.black.withOpacity(.6),
                          Colors.blue,
                          Colors.indigo,
                          Colors.purple,
                          Colors.red
                        ],
                        center: Alignment.bottomLeft,
                        startAngle: 1,
                        endAngle: 7),
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/rahim.jpg'),
                      radius: 60,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Abdul Rahim',
                          style: TextStyle(fontSize: 30, fontFamily: 'rrr'),
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          profile(
            Title: 'Full Name',
            Triling: 'Abdul Rahim',
          ),
          Divider(),
          profile(
            Title: 'Email',
            Triling: 'rahimsr983@gmail.com',
          ),
          Divider(),
          profile(
            Title: 'Phone Number',
            Triling: '01718663032',
          ),
          Divider(),
          profile(
            Title: 'Address',
            Triling: 'DUET-1700, Gazipur',
          ),
          SizedBox(
            height: 16,
          ),
          wishlist(
              a: 'Wishlist',
              b: 5.toString(),
              c: Icons.arrow_forward_ios_outlined),
          wishlist(
              a: 'My Bag',
              b: 7.toString(),
              c: Icons.arrow_forward_ios_outlined),
          wishlist(
              a: 'My Orders',
              b: '5 in transit',
              c: Icons.arrow_forward_ios_outlined),
          MaterialButton(
              child: Container(
                margin: EdgeInsets.only(bottom: 16, left: 20, right: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(18)),
                child: Container(
                  child: Center(
                      child: Text(
                    'Log Out',
                    style: TextStyle(fontSize: 25, fontFamily: 'rrr'),
                  )),
                ),
              ),
              onPressed: () {}),
        ]));
  }
}

wishlist({a, b, c}) {
  return GestureDetector(
    onTap: () {},
    child: Column(
      children: [
        ListTile(
          leading: Text(
            a,
            style: TextStyle(fontSize: 20, fontFamily: 'rrr'),
          ),
          trailing: Wrap(
            spacing: 5,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                b,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontFamily: 'rrr'),
              ),
              Icon(
                c,
                size: 18,
              )
            ],
          ),
        )
      ],
    ),
  );
}

profile({Title, Triling}) {
  return ListTile(
    title: Text(
      Title,
      style: TextStyle(fontSize: 20, fontFamily: 'rrr'),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Triling,
          style: TextStyle(fontSize: 20, fontFamily: 'rrr'),
        )
      ],
    ),
  );
}
