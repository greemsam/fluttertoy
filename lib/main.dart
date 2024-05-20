import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('Diary'),
                titleTextStyle:
                    TextStyle(fontSize: 20, color: Color(0xff000000)),
                backgroundColor: Color(0xffdddddd),
                elevation: 0),
            body: Container(
              alignment: Alignment.topCenter,
              child: Container(
                  padding: EdgeInsets.all(8),
                  child: Column(children: <Widget>[
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        height: 50,
                        child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                            ))),
                    SizedBox(
                        height: 400,
                        child: TextField(
                            expands: true,
                            maxLines: null,
                            textAlignVertical: TextAlignVertical.top,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                            )))
                  ])),
            )));
  }
}
