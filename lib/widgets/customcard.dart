
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

	final String title;
	final String contentText;
	final double boxWidth;
	final double boxHeight;
	final Color? backgroundColor;

	CustomCard({
		super.key,
		required this.title, 
		required this.contentText, 
		required this.boxWidth,
		required this.boxHeight,
		this.backgroundColor,
	});
	@override
	Widget build(BuildContext context){
		return SizedBox(
			width:boxWidth,
			height:boxHeight,
			child:Column(
				children:<Widget>[
					Text(title),
					Text(contentText)
				]
			)
		);
	}
}