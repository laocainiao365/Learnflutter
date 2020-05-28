import 'package:flutter/material.dart';

class LaoCaiNiao extends StatefulWidget{
  LaoCaiNiao(){
    print("LaoCaiNiao-ful");
  }
  @override
  State<StatefulWidget> createState() {
    print("createState");
    return LaoCaiNiaoState();
  }
}

class LaoCaiNiaoState extends State<LaoCaiNiao>{

  int n = 0;

  LaoCaiNiaoState(){
    print("State");
  }


  //初始化一些state，和网络请求，其他state初始化的事
  @override
  void initState() {
    print("initState");
    super.initState();
  }

  //当依赖state发生变化更新
  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Column(
      children: <Widget>[
        Text("$n"),
        RaisedButton(
          onPressed: (){
            setState(() {
              n++;
            });
          },
          child: Text("+++"),
        ),
      ],
    );
  }


  //当父组件重新绘制的时候执行
  @override
  void didUpdateWidget(LaoCaiNiao oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  //当组件被移除的时候
  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }

  //当组件销毁的时候被调用
  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

}