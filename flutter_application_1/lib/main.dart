//import 'package:flutter/animation.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'age.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var c1 = Color(0xff1f415a);
  var c2 = Color(0xfffb9684);
  var c3 = Color(0xfff7deca);
  var c4 = Color(0xffc9cbc8);
  var c5 = Colors.white;
  var password_visible = true;
  int str = 0;
  var myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "salman",
            style: TextStyle(color: c3, fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: c2,
        ),
        body: Container(
            height: double.infinity,
            color: c1,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: TextField(
                      decoration: InputDecoration(
                        //fillColor: null,1
                        //filled: null,
                        //enabledBorder: OutlineInputBorder(
                        //  borderSide: BorderSide(width: 1, color: c2),
                        //  borderRadius: BorderRadius.circular(80.0),
                        // ),
                        labelStyle: TextStyle(fontSize: 25, color: c2),
                        hintStyle: TextStyle(fontSize: 25, color: c4),
                        labelText: "Birth year",
                        hintText: "Enter Your Birth Year",
                        icon: Icon(Icons.person, color: c2),
                      ),
                      style: TextStyle(color: c5, fontSize: 25),
                      keyboardType: TextInputType.number,
                      controller: myController,
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: () => setState(() {
                        Age(int.parse(myController.text));
                        str = Age.age;
                      }),
                      color: c2,
                      textColor: c1,
                      disabledColor: Colors.grey,
                      disabledTextColor: c2,
                      splashColor: c1,
                      highlightColor: Colors.green,
                      //padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: const Text(
                        "Get my Age!",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  Container(
                    child: Text(
                      "Your age is: $str ",
                      style: TextStyle(fontSize: 25, color: c2),
                    ),
                  )
                ],
              ),
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: c2,
          onPressed: () => setState(() {
            c1 = c1 == Colors.black ? Color(0xff294c6f) : Colors.black;
            c2 = c2 == Colors.white ? Color(0xfffb9684) : Colors.white;
            c3 = c3 == Color(0xfff7deca) ? Colors.black : Color(0xfff7deca);
          }),
        ),
      ),
    );
  }
}
