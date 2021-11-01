import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppBar(),
  ));
}

class AppBar extends StatefulWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  final names = ["Roshan", "Rabin", "Ram"];
  final data = [1, 22, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  shape: const ContinuousRectangleBorder(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(100))),
                  expandedHeight: 300.0,
                  pinned: true,
                  floating: true,
                  title: const Text("FITHUB"),
                  centerTitle: true,
                  backgroundColor: Colors.blue,
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                    ),
                  ],
                ),
              ];
            },
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      color: Colors.grey,
                      child: Text("$names[index]"),
                    ),
                  ),
                 
                ],
              ),
            )),
      ),
    );
  }
}
