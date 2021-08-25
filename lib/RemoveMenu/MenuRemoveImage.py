import 'package:flutter/material.dart';

class RemoveImage extends StatefulWidget {
  const RemoveImage({Key? key}) : super(key: key);

  @override
  _RemoveImageState createState() => _RemoveImageState();
}

class _RemoveImageState extends State<RemoveImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Remove Docker Image",
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
          Navigator.pushNamed(context, "removeimage");
        },
      ),
    );
  }
}
