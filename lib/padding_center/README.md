# Padding Center

```dart
Padding(
  // 四周padding都是20
  padding: EdgeInsets.all(20),
  // 每个边设置padding
  padding: EdgeInsets.only(
    top: 50,
    left: 30,
    right: 30,
    bottom: 20
  ),
  // 水平和垂直方向设置padding
  padding: EdgeInsets.symmetric(
      horizontal: 30, // 水平方向
      vertical: 20  //垂直方向
   ),
  child: ListView.builder(
    itemCount: 100,
    itemBuilder: (context, index){
      return Text("老菜鸟",style: TextStyle(fontSize: 30),);
    }
  ),
);


Center(  
    child: Text("Laocainiao")
)
```

