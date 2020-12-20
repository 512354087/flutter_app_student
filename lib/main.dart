import 'package:flutter/material.dart';
import 'package:flutter_app_student/demo/i18n/i18n_demo.dart';
import 'demo/listview_demo.dart';
import "demo/drawer_demo.dart";
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/form_demo.dart';
import 'demo/material_components.dart';
import 'demo/state/state_management_demo.dart';
import 'demo/stream/stream_demo.dart';
import 'demo/bloc/bloc_demo.dart';
import 'demo/rxdart/rxdart_demo.dart';
import 'demo/http/http_demo.dart';
import 'demo/animation/animation_demo.dart';
import 'demo/i18n/i18n_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';  // 加载本地化插件
import 'package:flutter_app_student/demo/i18n/map/localization_demo.dart';
import 'package:flutter_app_student/demo/i18n/intl/intl_demo_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en','US'),
      // locale: Locale('zh', 'CN'),
      // localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
      //   return Locale('en', 'US');
      // },
      localizationsDelegates: [
        IntlDemoLocalzationsDelegate(), // 自定义的本地化资源  采用插件intl 实用化方式 i18n
        NinghaoDemoLocalizationsDelegate(), // 自定义的本地化资源 实用化方式见 i18n
        GlobalMaterialLocalizations.delegate,  //国际化需要的 material 组件的本地化字符串
        GlobalWidgetsLocalizations.delegate // 定义小部件文字阅读方向  更具不同的语言从左到右 或者从右到左
      ],
      supportedLocales: [  // 设置应用支持的语言
        Locale('en','US'),
        Locale('zh', 'CN')
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo1',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.yellow, // 主题颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor:  Color.fromRGBO(3, 54, 255, 1.0),
      ),
      initialRoute: '/i18n', //初始路由
      routes: {
        '/': (context) => MyHomePage(title: '首页'),
        '/about': (context) => Page(title: 'About'),
        '/navigator': (context) => NavigatorDemo(),
        '/form': (context) => FormDemo(),
        '/mdc':(context)=> MaterialComponents(),
        '/state-management': (context) => StateManagementDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlocDemo(),
        '/http': (context) => HttpDemo(),
        '/animation': (context) => AnimationDemo(),
        '/i18n': (context) => I18nDemo(),
      },
      // home:NavigatorDemo() //MyHomePage(title: '首页'),  // MyHomePage(title: '首页')
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              // leading: IconButton(
              //   icon: Icon(Icons.menu),
              //   tooltip: "Navigration",
              //   onPressed: ()=> debugPrint('Navigration'),
              // ),
              title: new Text(this.title),
              elevation: 0.0, // 阴影
              bottom: TabBar(
                unselectedLabelColor: Colors.black38, // 未选中的label颜色
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                  Tab(icon: Icon(Icons.view_quilt))
                ],
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: "Search",
                  onPressed: () => debugPrint('Search'),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBarDemo(),
            body: TabBarView(children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              // ViewDemo()
              SliverDemo()
            ]),
            drawer: DrawerDemo()
          )
    );
  }
}
