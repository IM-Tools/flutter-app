import 'package:flutter/material.dart';


class StartUpPage extends StatefulWidget {
  StartUpPage({Key? key}) : super(key: key);

  @override
  _StartUpPageState createState() => _StartUpPageState();
}

class _StartUpPageState extends State<StartUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
        Image.asset(
          'assets/images/start_up.jpeg',
          fit: BoxFit.cover,
          /// 获取当前屏幕的最大值
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height
        ),
        Positioned(
          top:MediaQuery.of(context).padding.top+10,
          right: 10,
          child: _clipButton(),
        )
      ],),
    ); 
  }
  Widget _clipButton(){
    /// 指定返回内容的宽高
     return Container(
       width:100,
       height:50,
       color: Colors.black,
       child:Column(
         children:[
           Text('跳过当前',style:TextStyle(color:Colors.white,fontFamily: 12))
         ]
       )
     )
  }
}