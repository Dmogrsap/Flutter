import 'package:flutter/material.dart';
import 'package:listas/src/pages/alert.dart';
//import 'package:listas/src/pages/HomeUno.dart';
//import 'package:listas/src/pages/homepage.dart';

import '../routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: "/", // este marca que la diagonal es homepage
      routes: routes(context),
      onGenerateRoute: (RouteSettings settings) {
        print(settings.name);
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
        //home: HomePage()  //se ira cambiando segun necesitemos
      },
    );
  }
}
