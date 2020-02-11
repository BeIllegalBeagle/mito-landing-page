import 'package:flutter_web/material.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';
import 'widgets/search.dart';

void main() => runApp(MaterialApp(
      title: 'Mito home page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFFF8FBFF),
        Color(0xFFFCFDFD),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavBar(), Body()],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.network("assets/image_01.png", scale: .85),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hello!",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Regular",
                          color: Color(0xFF8591B0))),
                  RichText(
                    text: TextSpan(
                        text: "WellCome To ",
                        style:
                            TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                        children: [
                          TextSpan(
                              text: "Mito",
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87))
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20),
                    child: Text("LET’S EXPLORE THE WORLD"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Search()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Introducing a",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),
            ),
            RichText(
              text: TextSpan(
                text: 'different form of forum',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 10),
              child: Text("Interact with other users in self destroying, self replicating groups.\nSee how many group replications you can survive!", 
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 10),
              child: Text("Shaped for diverse and engaging discussion", 
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),),
            ),
             SizedBox(
              height: 15,
            ),
            Text("Normal cell division", 
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),),
            Text("When a group holds a maximum number of users, the group divides into two seperate versions.", 
              style: TextStyle(
              fontSize: 16,
              color: Color(0xFF8591B0),
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat-Regular"),),  
            Center(
              child: Image.network(
                "assets/normal_split.png",
                scale: 2,
              ),
            ),
            SizedBox(
              height: 32,
            ),
             Text("Immortal cell division", 
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),),
            Text("When a group is large enough, it will create a single group with an unlimited capacity of users able to join.\nThe new group can also hold groups within itself. Think of it as a sub-topic of the original group!", 
              style: TextStyle(
              fontSize: 16,
              color: Color(0xFF8591B0),
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat-Regular"),),
            Center(
              child: Image.network(
                "assets/immortal_split.png",
                scale: 2,
              ),
            ),

            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
