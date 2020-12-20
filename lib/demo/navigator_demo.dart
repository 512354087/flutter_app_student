import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('首页'),
      ),
      body: Container(
        alignment: Alignment.center,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(onPressed: null, child: Text('Home')),
            FlatButton(onPressed: ()=>Navigator.pushNamed(context, '/about'), child: Text('About'))
        ],)
      ),
    );
  }
}

// page 部件 用于生成页面 

class Page extends StatelessWidget {
  final String title;
  const Page({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}