// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';

class PaymeentsuccessPage extends StatefulWidget {
  const PaymeentsuccessPage({Key? key}) : super(key: key);

  @override
  _PaymeentsuccessPageState createState() => _PaymeentsuccessPageState();
}

class _PaymeentsuccessPageState extends State<PaymeentsuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Successgful Pament'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(100),
            child: Column(
              children: [
                Text(
                  'Congratulations',
                  style: TextStyle(fontSize: 40, fontFamily: 'rrr'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Successfully Paymrnt Your Bill',
                  style: TextStyle(fontSize: 25, fontFamily: 'rrr'),
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
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
                      'Back to HomePage',
                      style: TextStyle(fontSize: 25, fontFamily: 'rrr'),
                    )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
