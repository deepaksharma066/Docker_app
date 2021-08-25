import 'package:flutter/material.dart';
import 'package:docker_mobile_app/CreateMenu/MenuContainerCreate.dart';
import 'package:docker_mobile_app/RemoveMenu/MenuContainerRemove.dart';
import 'package:docker_mobile_app/RemoveMenu/MenuRemoveAllContainer.dart';
import 'package:docker_mobile_app/RemoveMenu/MenuRemoveImage.dart';
import 'package:docker_mobile_app/ShowMenu/RunContainer.dart';
import 'package:docker_mobile_app/ShowMenu/ShowImages.dart';
import 'package:docker_mobile_app/ShowMenu/StopContainer.dart';

main(List<String> args) {
  runApp(MaterialApp(
    home: MyMenu(),
  ));
}

class MyMenu extends StatefulWidget {
  const MyMenu({Key? key}) : super(key: key);

  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  // var TitleImage = Image.network("https://bit.ly/3sBvoHX");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          "Menu List",
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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/2248523/pexels-photo-2248523.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              ContainerCreate(),
              SizedBox(
                height: 50.0,
              ),
              RunContainer(),
              SizedBox(
                height: 50.0,
              ),
              StopContainer(),
              SizedBox(
                height: 50.0,
              ),
              ShowImages(),
              SizedBox(
                height: 50.0,
              ),
              ContainerRemove(),
              SizedBox(
                height: 50.0,
              ),
              RemoveAll(),
              SizedBox(
                height: 50.0,
              ),
              RemoveImage(),
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
            ],
          ),
        ),
      ),
    );
  }
}
