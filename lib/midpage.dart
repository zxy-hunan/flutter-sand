import 'package:flutter/material.dart';

class Midpage extends StatefulWidget {
  const Midpage({super.key});

  @override
  State<Midpage> createState() => _MidpageState();
}

class _MidpageState extends State<Midpage> {
  List items = [
    {
      "index": 0,
      "type": "assets/icon/java.png",
      "name": "后端",
      "time": "实现系统的核心功能和业务规则"
    },
    {
      "index": 1,
      "type": "assets/icon/javascript.png",
      "name": "前端",
      "time": "界面设计实现,交互逻辑编写,性能优化"
    },
    {
      "index": 2,
      "type": "assets/icon/android.png",
      "name": "移动端",
      "time": "响应式设计,原生应用开发,混合应用开发"
    },
    {
      "index": 3,
      "type": "assets/icon/other.png",
      "name": "其他",
      "time": "互联网前言技术"
    }
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [Text("nihao ")],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                // return Text(items[index]["name"]);
                return publishContainer(
                  name: items[index]["name"],
                  content: items[index]["time"],
                  path: items[index]["type"],
                );
              },
            ),
          ),
          Center(
            child: Container(
              width: 50.0,
              height: 50.0,
              child: Image.asset(
                "assets/tabbar/add.png",
                fit: BoxFit.cover, // 根据需要调整图片缩放方式
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}

class publishContainer extends StatefulWidget {
  final String name;
  final String content;
  final String path;
  publishContainer(
      {super.key,
      required this.name,
      required this.content,
      required this.path});

  @override
  State<publishContainer> createState() => _publishContainerState();
}

class _publishContainerState extends State<publishContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xfffffaf0), borderRadius: BorderRadius.circular(10.0)),
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: Row(
        children: [
          Container(
            width: 30.0,
            height: 30.0,
            margin: const EdgeInsets.only(right: 10.0),
            child: Image.asset(widget.path),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(widget.name), Text(widget.content)],
          ),
        ],
      ),
    );
  }
}
