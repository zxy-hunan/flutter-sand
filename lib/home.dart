import 'package:flutter/material.dart';
import 'package:flutter_sand/midpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> items = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: IconContainer(
                index: 0,
                name: "首页",
                currentIndex: _selectedIndex,
                path: "assets/tabbar/home.png",
                selPath: "assets/tabbar/homesel.png",
              ),
              onTap: () {
                _onItemTapped(0);
              },
            ),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: IconContainer(
                index: 1,
                name: "热议",
                currentIndex: _selectedIndex,
                path: "assets/tabbar/dialoguesell.png",
                selPath: "assets/tabbar/dialoguel.png",
              ),
              onTap: () {
                _onItemTapped(1);
              },
            ),
            Container(
              // padding: EdgeInsets.only(bottom: 10.0),
              // child: Image.asset(
              //   "assets/tabbar/add.png",
              //   fit: BoxFit.cover, // 根据需要调整图片缩放方式
              // ),
              width: 30.0,
            ),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: IconContainer(
                index: 2,
                name: "会话",
                currentIndex: _selectedIndex,
                path: "assets/tabbar/tallk.png",
                selPath: "assets/tabbar/tallksel.png",
              ),
              onTap: () {
                _onItemTapped(2);
              },
            ),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: IconContainer(
                index: 3,
                name: "我的",
                currentIndex: _selectedIndex,
                path: "assets/tabbar/me.png",
                selPath: "assets/tabbar/mesel.png",
              ),
              onTap: () {
                _onItemTapped(3);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Material(
        type: MaterialType.transparency,
        child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            elevation: 0,
            child: Container(
              child: Image.asset(
                "assets/tabbar/add.png",
                fit: BoxFit.cover, // 根据需要调整图片缩放方式
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Midpage();
                }),
              );
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: SafeArea(child: Text("data")),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class IconContainer extends StatefulWidget {
  final int index;
  final String name;
  final int currentIndex;
  final String path;
  final String selPath;
  const IconContainer(
      {super.key,
      required this.path,
      required this.index,
      required this.currentIndex,
      required this.selPath,
      required this.name});

  @override
  State<IconContainer> createState() => _IconContainerState();
}

class _IconContainerState extends State<IconContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 20.0,
            width: 20.0,
            child: Image.asset(
              widget.currentIndex == widget.index
                  ? widget.selPath
                  : widget.path,
              fit: BoxFit.cover, // 根据需要调整图片缩放方式
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            widget.name,
            style: TextStyle(
                fontSize: 12,
                color: widget.currentIndex == widget.index
                    ? Color(0xff1e80ff)
                    : Color(0xffbfbfbf)),
          )
        ],
      ),
    );
  }
}
