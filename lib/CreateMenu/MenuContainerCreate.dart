import 'package:flutter/material.dart';

class ContainerCreate extends StatefulWidget {
  const ContainerCreate({Key? key}) : super(key: key);

  @override
  _ContainerCreateState createState() => _ContainerCreateState();
}

class _ContainerCreateState extends State<ContainerCreate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Create Container",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                decoration: TextDecoration.combine([]),
                decorationColor: Colors.black,
                decorationThickness: 2.0,
                backgroundColor: Colors.blue,
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
          Navigator.pushNamed(context, "create");
        },
      ),
    );
  }
}
