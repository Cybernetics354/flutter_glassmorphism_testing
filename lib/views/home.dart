import 'package:flutter/material.dart';
import 'package:glassmorphism_testing/widgets/glassmorphism.dart';

class HomeMainView extends StatefulWidget {
  @override
  _HomeMainViewState createState() => _HomeMainViewState();
}

class _HomeMainViewState extends State<HomeMainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image2.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GlassContainer(
              width: MediaQuery.of(context).size.width - 100.0,
              height: MediaQuery.of(context).size.width - 100.0,
              child: Center(
              ),
            ),
          )
        ],
      ),
    );
  }
}