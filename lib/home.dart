import 'package:flutter/material.dart';

class HomesState extends StatefulWidget {
  const HomesState({super.key});

  @override
  State<HomesState> createState() => _HomesStateState();
}

class _HomesStateState extends State<HomesState> {
  double width = 50;
  double height = 50;
  Color color = Colors.green;
  double radius = 8;
  bool visible=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
          child: AnimatedOpacity(
            opacity: visible?1:0,
            duration: const Duration(seconds: 1),
            child: AnimatedContainer(
              
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(radius),
              ), duration: const Duration(seconds: 1),
              
              curve:Curves.easeInCirc,
            ),
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              width == 50
                  ? (
                      width = 200,
                      width = 200,
                      height = 200,
                      color = Colors.red,
                      radius = 20,
                    )
                  : (
                      width = 50,
                      height = 50,
                      color = Colors.green,
                      radius = 8,
                    );
            });
          },
          child: const Icon(Icons.play_arrow),
        ));
  }
}
