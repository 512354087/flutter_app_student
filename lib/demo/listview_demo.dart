import 'package:flutter/material.dart';
import '../model/post.dart';
import './post_show_demo.dart';

class ListViewDemo extends StatelessWidget {

  static Widget _listItemBuilder(BuildContext context,int index){
    return new Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(children: <Widget>[  // stack部件 可以放一堆小部件
        Column(
          children: <Widget>[
            AspectRatio( // 裁剪小部件
              aspectRatio: 16/9,
              child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),

            ),
            SizedBox(height: 16.0),
            Text(
              posts[index].title,
              style: Theme.of(context).textTheme.title,
            ),
            Text(
              posts[index].author,
              style: Theme.of(context).textTheme.subhead,
            ),
            SizedBox(height: 16.0),
          ]
        ),
        Positioned.fill(
          child:Material(
            color: Colors.transparent,
            child: InkWell(  // 添加溅墨的动画效果
              splashColor: Colors.white.withOpacity(0.3),
              highlightColor: Colors.white.withOpacity(0.1),
              onTap: () {
                // debugPrint('inkwell');
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PostShowDemo(post: posts[index]))
                  );
              }
            ) //背景透明
          )
        )
      ],)
    );
  }

  const ListViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}
