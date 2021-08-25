import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/rendering.dart';

class RemoveAll extends StatefulWidget {
  const RemoveAll({Key? key}) : super(key: key);

  @override
  _RemoveAllState createState() => _RemoveAllState();
}

class _RemoveAllState extends State<RemoveAll> {
  removeallcontainer() async {
    var url = Uri.http("13.233.179.151", "/cgi-bin/RemoveAllContainer.py");

    var response = await http.get(url);
    //print(response.body);
    setState(() {
      output = response.body;
    });
  }

  refresh() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://tse2.mm.bing.net/th?id=OIP.1SOcGC17WownW97sUW_U2gHaEo&pid=Api&P=0&w=280&h=176'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "OUTPUT",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                        decorationColor: Colors.black,
                        decorationThickness: 3.0,
                        shadows: [
                          Shadow(
                            blurRadius: 4.0,
                            color: Colors.black,
                            offset: Offset(6, 1),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  child: Text(
                    "$output",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        decorationColor: Colors.black,
                        decorationThickness: 3.0,
                        shadows: [
                          Shadow(
                            blurRadius: 2.0,
                            color: Colors.black,
                            offset: Offset(4, 1),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: MaterialButton(
                    color: Colors.red,
                    child: Text(
                      "Refresh",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          decorationColor: Colors.black,
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
                      refresh();
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: MaterialButton(
                    color: Colors.red,
                    child: Text(
                      "Go To Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          decorationColor: Colors.black,
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
                      Navigator.pushNamed(context, "home");
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: MaterialButton(
                    color: Colors.red,
                    child: Text(
                      "Go To Menu",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          decorationColor: Colors.black,
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  var output;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Remove All Container",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                decoration: TextDecoration.combine([]),
                decorationColor: Colors.black,
                decorationThickness: 2.0,
                backgroundColor: Colors.red,
                shadows: [
                  Shadow(
                    blurRadius: 1.0,
                    color: Colors.black,
                    offset: Offset(5, 1),
                  ),
                ]),
          ),
        ),
        onPressed: () {
          removeallcontainer();
          refresh();
        },
      ),
    );
  }
}
