import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:glass_card/glasscomponent.dart';
void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
      home : App()));
}
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => _AppState();
}
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return
         Scaffold(
           body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
            image: DecorationImage(
              image:AssetImage("assets/bg.png"),
                    fit: BoxFit.fill
                ),
            ),
             child: GlassComponent()
             )
         );
    }
}



