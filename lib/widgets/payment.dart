import 'package:firebase_connect_check/Model/newArrival.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  // OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Payment Your Bill',
              style: TextStyle(fontFamily: 'rrr', fontSize: 25),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              Container(
                margin: EdgeInsets.only(right: 10, top: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/filter');
                      },
                      icon: Icon(Icons.add),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
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
            ]),
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment',
                      style: TextStyle(fontSize: 30, fontFamily: 'rrr'),
                    ),
                    Text(
                      'Order Number 3241',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Card(
                      elevation: 10,
                      shadowColor: Colors.white,
                      shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                          height: 170,
                          width: double.infinity,
                          // margin: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.6),
                              borderRadius: BorderRadius.circular(20),
                              gradient: SweepGradient(
                                  colors: [
                                    Colors.pink,
                                    Colors.black.withOpacity(.6),
                                    Colors.blue,
                                    Colors.indigo,
                                    Colors.purple
                                  ],
                                  center: Alignment.bottomLeft,
                                  startAngle: 1,
                                  endAngle: 7)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 13),
                                      child: Text(
                                        'Visa Card',
                                        style: TextStyle(
                                            fontSize: 25, fontFamily: 'rrr'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: Text('Visa Electron'),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 13),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('****',
                                            style: TextStyle(
                                              fontSize: 25,
                                            )),
                                        Text('****',
                                            style: TextStyle(
                                              fontSize: 25,
                                            )),
                                        Text('****',
                                            style: TextStyle(
                                              fontSize: 25,
                                            )),
                                        Text('****',
                                            style: TextStyle(
                                              fontSize: 25,
                                            )),
                                        Text('2193',
                                            style: TextStyle(
                                              fontSize: 25,
                                            )),
                                      ]),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 13),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Card Holder',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'rrr'),
                                            ),
                                            Text(
                                              'Abdur Rahim',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontFamily: 'rrr'),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Card Expairs',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'rrr'),
                                            ),
                                            Text(
                                              '10/07/2023',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontFamily: 'rrr'),
                                            )
                                          ],
                                        ),
                                        CircleAvatar(
                                            backgroundColor: Colors.green,
                                            child: Icon(
                                              Icons.check,
                                              color: Colors.white,
                                            ))
                                      ]),
                                ),
                              ])),
                    ),
                    Column(children: <Widget>[
                      CreditCardForm(
                        formKey: formKey,
                        obscureCvv: true,
                        obscureNumber: true,
                        cardNumber: cardNumber,
                        cvvCode: cvvCode,
                        isHolderNameVisible: true,
                        isCardNumberVisible: true,
                        isExpiryDateVisible: true,
                        cardHolderName: cardHolderName,
                        expiryDate: expiryDate,
                        themeColor: Colors.blue,
                        textColor: Colors.white,
                        cardNumberDecoration: InputDecoration(
                          labelText: 'Number',
                          hintText: 'XXXX XXXX XXXX XXXX',
                          hintStyle: const TextStyle(color: Colors.white),
                          labelStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.grey,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        expiryDateDecoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.white),
                          labelStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.grey,
                          focusedBorder: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'Expired Date',
                          hintText: 'XX/XX',
                        ),
                        cvvCodeDecoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.white),
                          labelStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.grey,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'CVV',
                          hintText: 'XXX',
                        ),
                        cardHolderDecoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.white),
                          labelStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.grey,
                          focusedBorder: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'Card Holder',
                          hintText: 'Enter Name Of  Card holder',
                        ),
                        onCreditCardModelChange: onCreditCardModelChange,
                      ),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order Amount',
                                style:
                                    TextStyle(fontSize: 25, fontFamily: 'rrr'),
                              ),
                              Text(
                                'Your total discount amount',
                                style:
                                    TextStyle(fontSize: 20, fontFamily: 'rrr'),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '\$ 150.85',
                              style: TextStyle(fontSize: 25, fontFamily: 'rrr'),
                            ),
                            Text(
                              '\$ -55.98',
                              style: TextStyle(fontSize: 20, fontFamily: 'rrr'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      // margin: EdgeInsets.only(bottom: 20),
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            primary: const Color(0xff1b447b),
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(12),
                            child: const Text(
                              'PrayBill',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'rrr',
                                fontSize: 20,
                                package: 'flutter_credit_card',
                              ),
                            ),
                          ),
                          onPressed: () {
                            // if (formKey.currentState!.validate()) {
                            //   print('valid!');
                            // } else {
                            //   print('invalid!');
                            // }
                            Navigator.pushNamed(context, '/paymentsuccess');
                          },
                        ),
                      ),
                    ),
                    Newarrival(
                      text: 'Payment also',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://media-eng.dhakatribune.com/uploads/2021/03/pm-begum-rokeya-dibosh-9-1607508089259-1615178283869.jpg')
                        // backgroundColor: Colors.transparent,
                        )
                  ])),
        ));
  }

  void onCreditCardModelChange(creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
