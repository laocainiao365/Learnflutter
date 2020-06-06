# flutter事件

在Flutter中，手势有两个不同的层次：

第一层：原始指针事件（Pointer Events）：描述了屏幕上由触摸板、鼠标、指示笔等触发的指针的位置和移动。

第二层：手势识别（Gesture Detector）：这个是在原始事件上的一种封装。

### 指针事件Pointer

Pointer 代表的是人机界面交互的原始数据。一共有四种指针事件：

PointerDownEvent 指针在特定位置与屏幕接触
PointerMoveEvent 指针从屏幕的一个位置移动到另外一个位置
PointerUpEvent 指针与屏幕停止接触
PointerCancelEvent 指针因为一些特殊情况被取消

原始指针事件使用Listener来监听：
```dart
class LaoCaiNiaoContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Listener(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
        onPointerDown: (event) => print("手指按下:$event"),
        onPointerMove: (event) => print("手指移动:$event"),
        onPointerUp: (event) => print("手指抬起:$event"),
      ),
    );
  }
}
```

事件对象event，可以从事件对象获取需要的信息比如点击位置，
>
> event.position:在屏幕上的位置
>
> event.localPosition:在组件内的位置
>
```dart
class LaoCaiNiaoContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Listener(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
        onPointerDown: (event){
          print("手指按下");
          print(event.position);
          print(event.localPosition);
        },
      ),
    );
  }
}
```

### 手势识别（Gesture Detector）
Gesture分层非常多的种类：
**点击：**
onTapDown：用户发生手指按下的操作

onTapUp：用户发生手指抬起的操作

onTap：用户点击事件完成

onTapCancel：事件按下过程中被取消

**双击：**

onDoubleTap：快速点击了两次

**长按：**

onLongPress：在屏幕上保持了一段时间

**纵向拖拽：**

onVerticalDragStart：指针和屏幕产生接触并可能开始纵向移动；

onVerticalDragUpdate：指针和屏幕产生接触，在纵向上发生移动并保持移动；

onVerticalDragEnd：指针和屏幕产生接触结束；

**横线拖拽：**

onHorizontalDragStart：指针和屏幕产生接触并可能开始横向移动；

onHorizontalDragUpdate：指针和屏幕产生接触，在横向上发生移动并保持移动；

onHorizontalDragEnd：指针和屏幕产生接触结束；

**globalPosition用于获取相对于屏幕的位置信息**
**localPosition用于获取相对于当前Widget的位置信息**

### 事件冒泡-不能阻止冒泡

可以通过Stack布局来解决，避免嵌套。

### 跨组件事件
在组件之间如果有事件需要传递，一方面可以一层层来传递，另一方面我们也可以使用一个EventBus工具来完成。

EventBus相当于是一种订阅者模式，通过一个全局的对象来管理；

```dart
dependencies:
  event_bus: ^1.1.1
```

第一：我们需要定义一个希望在组件之间传递的对象：

我们可以称之为一个时间对象，也可以是我们平时开发中用的模型对象（model）
```dart
class UserInfo {
  String name;
  int age;
  
  UserInfo(this.name, this.age);
}
```
第二：创建一个全局的EventBus对象
```dart
final eventBus = EventBus();
```
第三：在某个Widget中，发出事件：
```dart
class LcnButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("LcnButton"),
      onPressed: () {
        final info = UserInfo("老菜鸟", 18);
        eventBus.fire(info);
      },
    );
  }
}
```
第四：在某个Widget中，监听事件
```dart
class LcnText extends StatefulWidget {
  @override
  _LcnTextState createState() => _LcnTextState();
}

class LcnTextState extends State<LcnText> {
  String message = "laocainiao";

  @override
  void initState() {
    super.initState();

    eventBus.on<UserInfo>().listen((data) {
      setState(() {
        message = "${data.name}-${data.age}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(message, style: TextStyle(fontSize: 30),);
  }
}
```