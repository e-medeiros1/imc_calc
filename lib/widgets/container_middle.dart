import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

// ignore: must_be_immutable
class ContainerMiddle extends StatelessWidget {
  Widget widget;

  ContainerMiddle({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFFE7ECEF);
    Offset distance = const Offset(10, 10);
    double blur = 20;

    Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: backgroundColor,
            boxShadow: [
              BoxShadow(
                blurRadius: blur,
                offset: -distance,
                color: Colors.white,
                spreadRadius: 1,
                // inset: true,
              ),
              BoxShadow(
                blurRadius: blur,
                offset: distance,
                color: const Color(0xFFA7A9AF),
                spreadRadius: 1,
                // inset: true,
              ),
            ],
          ),
          child: SizedBox(
            width: double.infinity,
            height: size.height * .40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'ALTURA',
                  style: TextStyle(
                      fontSize: 30, color: Colors.black87, letterSpacing: 1.5),
                ),
                widget
              ],
            ),
          ),
        ),
      ),
    );
  }
}
