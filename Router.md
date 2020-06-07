# flutter-路由

Navigator和Route两个类

flutter中的路由用Navigator来管理，页面要想被管理必须包装为Route。

Route是一个抽象类，不能被直接实例化，但是可以用继承自他的MaterialPageRoute（不是直接继承）

Navigator

Navigator：管理所有的Route的Widget，通过一个Stack来进行管理的
那么我们开发中需要手动去创建一个Navigator吗？
并不需要，我们开发中使用的MaterialApp、CupertinoApp、WidgetsApp它们默认是有插入Navigator的
所以，我们在需要的时候，只需要直接使用即可


用MaterialPageRoute来包装：

### 路由的基本使用
```dart
/*
这两种方式都一样
Navigator.of(context).push()
Navigator.push()
*/
Navigator.of(context).push(MaterialPageRoute(
    builder: (ctx) {
      return AboutPage();
    }
));

//这个和上面那个方式一样，内部也是用的上面那种方式
Navigator.push(context,MaterialPageRoute(
    builder: (ctx) {
      return AboutPage();
    }
));
```

### 参数传递
```dart
//把参数放入返回的类中即可。
Navigator.of(context).push(MaterialPageRoute(
    builder: (ctx) {
      return AboutPage(参数);
    }
));
```
接收参数：
```dart
class LaoCaiNiao extends StatelessWidget {
  //接收参数
  final String name;
  LaoCaiNiao(this.name);
  ...
}
```
目标路由返回
```dart
Navigator.of(context).pop("back data");
或者
Navigator.pop();

//带数据返回
Navigator.of(context).pop("back data");
```
接收目标路由返回的数据
```dart
//返回的是一个Future
Future reslut = Navigator.of(context).push(MaterialPageRoute(
    builder: (ctx) {
      return AboutPage(参数);
    }
));

reslut.then((data){
  print(data);//back data
})
```
返回按钮-返回有两种方法：

**1. 重写appBar中leading属性**

**2. 监听返回按钮的点击（给Scaffold包裹一个WillPopScope）**

`WillPopScope`有一个`onWillPop`的回调函数，当我们点击返回按钮时会执行
这个函数要求有一个`Future`的返回值：
true：那么系统会自动帮我们执行pop操作
false：系统不再执行pop操作，需要我们自己来执行

第一种：重写leading
```dart
appBar: AppBar(
  title: Text("详情页"),
  leading: IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.of(context).pop("a back detail message");
    },
  ),
),
```

第二种：包裹WillPopScope
```dart
return WillPopScope(
  onWillPop: () {
    Navigator.of(context).pop("a back detail message");
    return Future.value(false);
  },
  child: Scaffold(
    appBar: AppBar(
      title: Text("详情页"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("返回首页"),
            onPressed: () => _onBackTap(context),
          ),
          Text(_message, style: TextStyle(fontSize: 20, color: Colors.red),)
        ],
      ),
    ),
  ),
);
```
### 命名路由-重点
> 命名路由是将名字和路由的映射关系，在一个地方进行统一的管理

> 有了命名路由，我们可以通过Navigator.pushNamed() 方法来跳转到新的页面

命名路由放到`MaterialApp`中`initialRoute` 和 `routes` 中。

`initialRoute`：设置应用程序从哪一个路由开始启动，设置了该属性，就不需要再设置home属性了

`routes`：定义名称和路由之间的映射关系，类型为Map<String, WidgetBuilder>

```dart
//引入组件，后续会抽离出去
import './LcnHomePage.dart';
import './LcnDetailPage.dart';

MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(
    primarySwatch: Colors.blue, splashColor: Colors.transparent
  ),
  initialRoute: "/",
  routes: {
    "/home": (ctx) => LcnHomePage(),
    "/detail": (ctx) => LcnDetailPage()
  },
);
```

**路由跳转**
```dart
Navigator.of(context).pushNamed("/detail");
```
**参数传递**
```dart
//argumnets负责传递参数

Navigator.of(context).pushNamed("/detail", arguments: "我是传过去的参数");
```
**组件内获取参数**
```dart
//在组件内build方法里面获取
...
Widget build(BuildContext context) {
  // 1.获取数据
  final String message = ModalRoute.of(context).settings.arguments as String;

  //ModalRoute.of(context).settings.arguments这里获取到的是个Object类型
}
...

//在StatafulWidget中

```
**路由钩子函数**

> onGenerateRoute

每一次路由的跳转都经过这个钩子函数,这个函数中有一个参数settings,携带了要跳转的路径名称和参数。
利用这点可以做路由守卫。
```dart
MaterialApp(
  title: 'Flutter Demo',
  initialRoute: "/",
  routes: {
    "/home": (ctx) => LcnHomePage(),
    "/detail": (ctx) => LcnDetailPage()
  },
  onGenerateRoute:(settings){
    //settings.name 携带的跳转名字
    //settings.arguments 携带跳转参数
  }
);
```
> onUnknownRoute

如果我们打开的一个路由名称是根本不存在就会调用此函数

```dart
MaterialApp(
  title: 'Flutter Demo',
  initialRoute: "/",
  routes: {
    "/home": (ctx) => LcnHomePage(),
    "/detail": (ctx) => LcnDetailPage()
  },
  onGenerateRoute(settings){
    //settings.name 携带的跳转名字
    //settings.arguments 携带跳转参数
  },
  onUnknownRoute:(settings){
    return MaterialPageRoute(
      ...
    )
  }
);
```