import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MaterialApp(
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //ignore: non_constant_identifier_names
  var BodyImage = Image.network(
      "https://miro.medium.com/max/1000/1*E8IgOSkMTpBRs0w0-Zsx2g.gif");
  // var TitleImage = Image.network(
  // "data:image/png;base64,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");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        // leading: TitleImage,
        backgroundColor: Colors.blue,
        title: Text(
          "DOCKER APP",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              decoration: TextDecoration.combine([]),
              decorationColor: Colors.black,
              decorationThickness: 2.0,
              shadows: [
                Shadow(
                  blurRadius: 1.0,
                  color: Colors.black,
                  offset: Offset(5, 1),
                ),
              ]),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/2248523/pexels-photo-2248523.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              child: BodyImage,
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Welcome to Docker App!!",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  decoration: TextDecoration.combine([
                    TextDecoration.overline,
                  ]),
                  decorationColor: Colors.black,
                  decorationThickness: 3.0,
                  backgroundColor: Colors.pink,
                  //decorationStyle: TextDecorationStyle.wavy,
                  shadows: [
                    Shadow(
                      blurRadius: 2.0,
                      color: Colors.black,
                      offset: Offset(5, 1),
                    ),
                  ]),
            ),
            SizedBox(
              height: 100.0,
            ),
            Text(
              "Docker Menu",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationThickness: 3.0,
                  backgroundColor: Colors.blue,
                  shadows: [
                    Shadow(
                      blurRadius: 2.0,
                      color: Colors.black,
                      offset: Offset(4, 1),
                    ),
                  ]),
            ),
            MaterialButton(
              color: Colors.red,
              child: Text(
                "Click",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    decorationColor: Colors.red,
                    decorationThickness: 3.0,
                    shadows: [
                      Shadow(
                        blurRadius: 2.0,
                        color: Colors.black,
                        offset: Offset(4, 1),
                      ),
                    ]),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "menu");
              },
            ),
          ],
        ),
      ),
    );
  }
}
