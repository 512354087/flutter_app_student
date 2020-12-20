import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
        elevation: 0.0,
      ),
      body:AnimationDemoHome(),
    );
  }
}
class AnimationDemoHome extends StatefulWidget  {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

//  with TickerProviderStateMixin  使用混合
class _AnimationDemoHomeState extends State<AnimationDemoHome> with TickerProviderStateMixin {
  // 创建动画控制器
  AnimationController animationDemoController;
  Animation animation;
  Animation animationColor;
  CurvedAnimation curve;
  @override
  void initState() {
    super.initState();
    animationDemoController =AnimationController(
    //   value: 32.0,
    //   lowerBound: 32.0, // 动画最小值
    //   upperBound: 100.0, // 动画最大值
      vsync: this,
      duration: Duration(milliseconds: 3000), // 设置动画时长
    );

    // 默认动画是线性的 CurvedAnimation 可以设置曲线动画
    curve = CurvedAnimation(
        parent: animationDemoController, curve: Curves.bounceIn);

    // 动画范围的值可以使用 Tween() 创建
    animation = Tween(begin: 32.0, end: 100.0).animate(curve);

    // 颜色动画
     animationColor =
        ColorTween(begin: Colors.red, end: Colors.red[900]).animate(curve);



    animationDemoController.addListener(() {
      // 
      // print('${animationDemoController.value}');
      // 更新视图
      setState(() {
        
      });
    });

    // 监听动画运行的动画
    animationDemoController.addStatusListener((AnimationStatus status) {
      print(status);
    });

    // 开始动画
    // animationDemoController.forward();
  }

 
  @override
  void dispose() {
    super.dispose();
    animationDemoController.dispose();
  
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // child: IconButton(
      //  icon: Icon(Icons.favorite,),
      //  iconSize: animation.value,
      //  color: animationColor.value,
      //  onPressed: (){
      //     // 开始动画
      //      switch (animationDemoController.status) {
      //       case AnimationStatus.completed:
      //         animationDemoController.reverse();
      //         break;
      //       default:
      //         animationDemoController.forward();
      //     }
      //  },),
      child: AnimatedHeart(
        animations: [
          animation,
          animationColor,
        ],
        controller: animationDemoController,), // 一组动画的守候可以单独提出来
    );
  }
}

class AnimatedHeart extends AnimatedWidget {
  final List animations;
  final AnimationController controller;

  //super(listenable: controller); 表示监听 controller
  AnimatedHeart({
    this.animations,
    this.controller,
  }) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite),
      iconSize: animations[0].value,
      color: animations[1].value,
      onPressed: () {
        switch (controller.status) {
          case AnimationStatus.completed:
            controller.reverse();
            break;
          default:
            controller.forward();
        }
      },
    );
  }
}
