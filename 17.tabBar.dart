import "package:flutter/material.dart";

void main() {
  runApp(allone());
}

class allone extends StatelessWidget {
  const allone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.comment), text: "Comments"),
                Tab(
                  child: Image(
                    image: AssetImage("assets/images/fbb.png"),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.computer),
                ),
                Tab(text: " News "),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
              Center(
                child: Text("Tab 3"),
              ),
              Center(
                child: Text("Tab 4"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
