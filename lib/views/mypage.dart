import 'package:flutter/material.dart';
import 'package:flutter_app1/models/post.dart';
import 'package:flutter_app1/services/postsService.dart';
import 'package:flutter_app1/views/postDetails.dart';

import 'myCard.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  List<Post> postList = new List();

  @override
  void initState() {
    super.initState();
    getPostFromsServer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  getPostFromsServer() async {
    postList = await PostService().getPosts();
    setState(() {});
  }

  TextStyle style = TextStyle(color: Colors.red, fontSize: 50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Posts",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: postList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage(
                      body: postList[index].body
                    )),
                  );
                },
                child: MyCard(
                  text: postList[index].title,
                ),
              );
            }));
  }
}
