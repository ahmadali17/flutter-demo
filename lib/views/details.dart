import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  String imageUrl;
  String title;
  String body;

  Details({this.imageUrl, this.title, this.body});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Column(children: [
        Center(child: Image.network(widget.imageUrl)),
        Center(
          child: Text(
            widget.title,
            style:
                TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            widget.body,
          ),
        )
      ]),
    );
  }
}
