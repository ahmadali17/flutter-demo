
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatefulWidget {
  String imageUrl;
  String title;
  String body;
  CardDetails({this.imageUrl,this.title,this.body});
  @override
  _CardDetailsState createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Center(child: Image.network(widget.imageUrl)),
          Center(child: Text(widget.title,style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),)),
          Center(child: Text(widget.body)),
          Row(
            children: [
              TextButton.icon(
                onPressed: null,
                icon: Icon(Icons.thumb_up),
                label: Text('Like'),
              ),
              TextButton.icon(
                onPressed: null,
                icon: Icon(Icons.comment),
                label: Text('Comment'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
