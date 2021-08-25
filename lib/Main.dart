import 'package:docker_mobile_app/RemoveMenu/RemoveImagefile.dart';

import 'package:flutter/material.dart';
import 'package:docker_mobile_app/CreateMenu/CreateContainerfile.dart';
import 'package:docker_mobile_app/Home.dart';
import 'package:docker_mobile_app/Menu.dart';
import 'package:docker_mobile_app/RemoveMenu/RemoveContainerfile.dart';

main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: {
        "home": (context) => MyHome(),
        "menu": (context) => MyMenu(),
        "create": (context) => Create(),
        "removecontainer": (context) => RemoveContainers(),
        "removeimage": (context) => ImageRemove(),
      },
    ),
  );
}
