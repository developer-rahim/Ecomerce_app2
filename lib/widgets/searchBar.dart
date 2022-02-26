import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
      ),
      home: Search(),
    );
  }
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController SearchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      //Search Wala Container

      padding: EdgeInsets.symmetric(horizontal: 8),
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(24)),
      child: Scaffold(
        body: Row(
          children: [
            GestureDetector(
              onTap: () {
                if ((SearchController.text).replaceAll(" ", "") == "") {
                  print("Blank Search");
                } else {
                  //getRecipe holo Api call korar funtion name
                  // getRecipes(SearchController.text);
                }
              },
              child: Container(
                child: Icon(
                  Icons.search,
                  color: Colors.blueAccent,
                ),
                margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
              ),
            ),
            Expanded(
              child: TextField(
                controller: SearchController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Let's Cook Something!"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
