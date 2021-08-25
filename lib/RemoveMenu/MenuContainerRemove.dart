import 'package:flutter/material.dart';

class ContainerRemove extends StatefulWidget {
  const ContainerRemove({Key? key}) : super(key: key);

  @override
  _ContainerRemoveState createState() => _ContainerRemoveState();
}

class _ContainerRemoveState extends State<ContainerRemove> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Remove Container",
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
          Navigator.pushNamed(context, "removecontainer");
        },
      ),
    );
  }
}
