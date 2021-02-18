import 'file:///D:/ITI/Flutter/Flutter%20-%20Day1/day1/lib/views/details.dart';
import 'file:///D:/ITI/Flutter/Flutter%20-%20Day1/day1/lib/views/card.dart';
import 'package:day1/models/post.dart';
import 'package:day1/services/postsService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // String imageUrl="https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg";
  String imageUrl = "https://picsum.photos/200";
  List<Post> postList = new List();

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  getPosts() async {
    postList = await PostsService().getPosts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(
                    imageUrl: imageUrl,
                    title: postList[index].title,
                    body: postList[index].body,
                  ),
                ),
              ),
            },
            child: Center(
              child: CardDetails(
                imageUrl: imageUrl,
                title: postList[index].title,
                body: postList[index].body,
              ),
            ),
          );
        },
      ),
    );
  }
}
