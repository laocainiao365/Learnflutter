import 'package:flutter/material.dart';
import './routers.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "老菜鸟",
      initialRoute: "/",
      onGenerateRoute: (settings){
        final String routersname = settings.name;
        final Function controllerFn = routers[routersname];
        //判断是否访问不存在的路由地址
        if(controllerFn == null){
          return MaterialPageRoute(
              builder: (context)=> routers['/Lcn404']()
          );
        }
        //判断是否传参
        if(settings.arguments == null){
          return MaterialPageRoute(
              builder: (context)=> controllerFn()
          );
        }else{
          return MaterialPageRoute(
              builder: (context)=> controllerFn(settings.arguments)
          );
        }
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(
            builder: (context)=> routers['/error']()
        );
      },
    );
  }
}


//routers里面的代码
import './page/about.dart';
import './page/home.dart';
import './page/error.dart';
import './page/Lcn404.dart';

final routers = {
  "/" : () => Home(),
  "/about" : (args)=> About(args),
  "/error": () => Error(),
  "/Lcn404": () => Lcn404()
};