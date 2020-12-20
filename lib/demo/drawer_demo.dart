import "package:flutter/material.dart";

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
              child: ListView(
                padding: EdgeInsets.all(0.0),
                children: <Widget>[
                  // DrawerHeader(
                  //     decoration: BoxDecoration(color: Colors.grey[100]),
                  //     child: Text('header'.toUpperCase())
                  // ),
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      'Donie',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    accountEmail: new Text('512354087@qq.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://resources.ninghao.org/images/wanghao.jpg'),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.yellow[400],
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.yellow[400].withOpacity(0.6),
                            BlendMode.hardLight),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Message', textAlign: TextAlign.right),
                    trailing: Icon(
                      Icons.message,
                      size: 22.0,
                      color: Colors.black12,
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    title: Text('Message', textAlign: TextAlign.right),
                    trailing: Icon(
                      Icons.message,
                      size: 22.0,
                      color: Colors.black12,
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    title: Text('Message', textAlign: TextAlign.right),
                    trailing: Icon(
                      Icons.message,
                      size: 22.0,
                      color: Colors.black12,
                    ),
                    onTap: () => Navigator.pop(context),
                  )
                ],
              ),
            ),
    );
  }
}