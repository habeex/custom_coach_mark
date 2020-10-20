import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/animated_focus_light.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TutorialCoachMark Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TutorialCoachMark tutorialCoachMark;
  List<TargetFocus> targets = List();

  GlobalKey keyButton = GlobalKey();
  GlobalKey keyButton1 = GlobalKey();
  GlobalKey keyButton2 = GlobalKey();
  GlobalKey keyButton3 = GlobalKey();
  GlobalKey keyButton4 = GlobalKey();
  GlobalKey keyButton5 = GlobalKey();
  GlobalKey keyButton6 = GlobalKey();

  int selectedIndex = 0;

  @override
  void initState() {
    initTargets();
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            key: keyButton5,
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            key: keyButton6,
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  key: keyButton,
                  color: Colors.blue,
                  height: 100,
                  width: MediaQuery.of(context).size.width - 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      child: Icon(Icons.remove_red_eye),
                      onPressed: () {
                        showTutorial();
                      },
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 50,
                height: 50,
                child: RaisedButton(
//                  key: keyButton2,
                  onPressed: () {},
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: RaisedButton(
//                    key: keyButton3,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: RaisedButton(
//                    key: keyButton4,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {},
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {

    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.home, key: keyButton1,),
          title: Text(
            'Hangouts',
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.insert_invitation, key: keyButton2,),
          title: Text(
            'Invitations',
          ),
        ),

        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.calendar_today, key: keyButton3,),
          //  ImageIcon(AssetImage("assets/images/my_events.svg")),
          title: Text(
            'My Calendar',
          ),
        ),

        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.supervised_user_circle, key: keyButton4),
          title: Text(
            "Habeeb",
          ),
        ),
      ],
          currentIndex: selectedIndex,
    showUnselectedLabels: true,
      onTap: _onBottomNavigationBarItemItemTapped,
    );
  }

  void _onBottomNavigationBarItemItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  void initTargets() {
    targets.add(TargetFocus(
      identify: "Target 4",
      keyTarget: keyButton1,
      contents: [
        ContentTarget(
            align: AlignContent.top,
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "Image Load network",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                    style: TextStyle(color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {
                      tutorialCoachMark.previous();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.network(
                        "https://juststickers.in/wp-content/uploads/2019/01/flutter.png",
                        height: 250,
                      ),
                    ),
                  ),
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.Circle,
    ));
    targets.add(TargetFocus(
      identify: "Target 4",
      keyTarget: keyButton2,
      contents: [
        ContentTarget(
            align: AlignContent.top,
            child: Container(
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      tutorialCoachMark.previous();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(
                        "https://juststickers.in/wp-content/uploads/2019/01/flutter.png",
                        height: 200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Image Load network",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.Circle,
    ));
    targets.add(TargetFocus(
      identify: "Target 4",
      keyTarget: keyButton3,
      contents: [
        ContentTarget(
            align: AlignContent.top,
            child: Container(
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      tutorialCoachMark.previous();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(
                        "https://juststickers.in/wp-content/uploads/2019/01/flutter.png",
                        height: 200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Image Load network",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.Circle,
    ));
    targets.add(TargetFocus(
      identify: "Target 4",
      keyTarget: keyButton4,
      contents: [
        ContentTarget(
            align: AlignContent.top,
            child: Container(
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      tutorialCoachMark.previous();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(
                        "https://juststickers.in/wp-content/uploads/2019/01/flutter.png",
                        height: 200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Image Load network",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.Circle,
    ));
    targets.add(TargetFocus(
      identify: "Target 4",
      keyTarget: keyButton5,
      isPaddingFocus: true,
      paddingFocus: 1.5,
      contents: [
        ContentTarget(
            align: AlignContent.bottom,
            child: Container(
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      tutorialCoachMark.previous();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(
                        "https://juststickers.in/wp-content/uploads/2019/01/flutter.png",
                        height: 200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Image Load network",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.Circle,
    ));
    targets.add(TargetFocus(
      identify: "Target 4",
      keyTarget: keyButton6,
      isPaddingFocus: true,
      paddingFocus: 4,
      contents: [
        ContentTarget(
            align: AlignContent.bottom,
            child: Container(
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      tutorialCoachMark.previous();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(
                        "https://juststickers.in/wp-content/uploads/2019/01/flutter.png",
                        height: 200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Image Load network",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.Circle,
    ));

  }

  void showTutorial() {
    tutorialCoachMark = TutorialCoachMark(context,
        targets: targets,
        alignSkip: Alignment.topLeft,
        colorShadow: Colors.red,
        textSkip: "SKIP",
        paddingFocus: 30,
        overlayBackground: Icon(Icons.map, size: 500, color: Colors.grey,),
        opacityShadow: 0.8, onFinish: () {
      print("finish");
    }, onClickTarget: (target) {
//      print(target);
    }, onClickSkip: () {
      print("skip");
    })
      ..show();
  }

  void _afterLayout(_) {
    Future.delayed(Duration(milliseconds: 100), () {
      showTutorial();
    });
  }
}
