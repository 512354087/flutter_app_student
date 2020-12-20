import 'package:flutter/material.dart';
import 'package:flutter_app_student/model/post.dart';

class PostShowDemo extends StatelessWidget {
  final Post post;
  const PostShowDemo({Key key,Post this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(post.title),
      ),
      body: Column(
        children: <Widget>[
          AspectRatio( // 裁剪小部件
            aspectRatio: 16/9,
            child: Image.network(post.imageUrl,fit: BoxFit.cover,),
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${post.title}', style: Theme.of(context).textTheme.title),
                Text('${post.author}', style: Theme.of(context).textTheme.subhead),
                SizedBox(height: 32.0),
                Text('${post.description}', style: Theme.of(context).textTheme.body1),
              ],
            ),
          ),
        ],
      )
    );
  }
}