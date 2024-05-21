import 'package:flutter/material.dart';
import 'widgets/customcard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({Key? key}) : super(key: key);
	final String appTitle = 'Diary';
	final String version = '0.1v';
	@override
  	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: Text(appTitle+version),
					titleTextStyle:TextStyle(fontSize: 20, color: Color(0xff000000)),
					backgroundColor: Color(0xffdddddd),
					elevation: 0
				),
				body: SingleChildScrollView(
					scrollDirection: Axis.vertical,
					padding: EdgeInsets.all(8),
					child: Column(
						children: <Widget>[
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
								)
							)
						),
						SizedBox(
							height: 400,
							child: TextField(
								expands: true,
								maxLines: null,
								textAlignVertical: TextAlignVertical.top,
								keyboardType: TextInputType.multiline,
								decoration: InputDecoration(
									border: OutlineInputBorder(
											borderRadius:BorderRadius.all(Radius.circular(6)),
									),
								)
							)
						),
						Column(children:<Widget>[
							CustomCard(
								title:'aaa', 
								contentText:'bbbbb', 
								boxWidth:100,
								boxHeight:100
							),
							CustomCard(
								title:'ccc', 
								contentText:'12312f12f', 
								boxWidth:100,
								boxHeight:100
							),
							CustomCard(
								title:'waegaweg', 
								contentText:'renbqws', 
								boxWidth:100,
								boxHeight:100
							)
						])
						
					])
				),
			)
		);
	}
}
