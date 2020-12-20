import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormDemo'),
        elevation: 0.0,
      ),
      body: Theme(  // 重置覆盖主题
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             // TextFieldDemo()
             RegisterFrom()
            ],
          ),
        ),
      ),
    );
  }
}


// 注册
class RegisterFrom extends StatefulWidget {
  RegisterFrom({Key key}) : super(key: key);

  @override
  _RegisterFromState createState() => _RegisterFromState();
}

class _RegisterFromState extends State<RegisterFrom> {
  final registerFormKey = GlobalKey<FormState>();
  String username,password;
  bool autovalidate = false; // 是否自动验证

  void submitRegisterForm() {
    if (registerFormKey.currentState.validate()) {
      // 如果验证通过 则调用
      registerFormKey.currentState.save();
      debugPrint('username: $username');
      debugPrint('password: $password');

      // Scaffold.of(context) 找到最近的Scaffold部件
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Registering...'),
        )
      );
    } else {
      // 动态设置 autovalidate 页面刷新
      setState(() {
        autovalidate = true;        
      });
    }
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return 'Username is required.';
    }

    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return 'Password is required.';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value) {
              username = value;
            },
            validator: validateUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatePassword,
            autovalidate: autovalidate,
          ),
          SizedBox(height: 32.0,),
          Container(
            width: double.infinity, // 无穷 类似100%宽
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register', style: TextStyle(color: Colors.white)),
              elevation: 0.0,
              onPressed: submitRegisterForm,              
            ),
          ),
        ],
      ),
    );
  }
}


class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  
  // 可以使用控制器取管理input 中的值 
  final textEditingController = TextEditingController();

  // 重写
  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }

  @override
   void initState() {
    super.initState();
    // textEditingController.text = 'hi';
    textEditingController.addListener(
      () {
        debugPrint('input: ${textEditingController.text}');
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController, // 使用控制器监听值的变化
      // 监听值的变化
      // onChanged: (value){
      //   debugPrint('$value onchange');
      // },
      // 确定 enter 
      onSubmitted: (value){
        debugPrint('$value onsubmitted');
      },
      decoration: InputDecoration(
        icon:Icon(Icons.subject),
        labelText: 'Title',
        helperText: 'Enter the post title', //鼠标获得焦点后的提示
        hintText: '请输入标题',
        //filled: true
        // border: InputBorder.none 设置边框
      ),
    );
  }
}

// 覆盖main.dart默认主题
class ThemeDemo extends StatelessWidget {
  const ThemeDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}