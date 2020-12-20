import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }  
}


// 按需生成 Grid
class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        // crossAxisCount: 3,
        maxCrossAxisExtent: 150.0,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}

//
class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('Item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.grey)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0, // 交叉轴的最大值
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('Item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.grey)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

// 按需生成页面
class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(posts[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(posts[index].author),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

// 用pageView  调整整个页面的显示
class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal, // Axis.vertical 改变排列方向(垂直)  Axis.horizontal (水平方向 默认)
      onPageChanged: (int index){debugPrint('$index');},
      controller:PageController(
        initialPage:0,
        keepPage : true,
        viewportFraction :1.0,
      ) ,
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment.center,
          child: Text(
            "one",style: TextStyle(
              color:Colors.white,
              fontSize: 40.0
            ),
          ),
        ), Container(
          color: Colors.grey[900],
          alignment: Alignment.center,
          child: Text(
            "two",style: TextStyle(
              color:Colors.white,
              fontSize: 40.0
            ),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment.center,
          child: Text(
            "three",style: TextStyle(
              color:Colors.white,
              fontSize: 40.0
            ),
          ),
        )
      ],
    );
  }
}