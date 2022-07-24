import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerBottom extends StatelessWidget {
  String text;
  Widget widget;
  ContainerBottom({Key? key, required this.text, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const backgroundColor = Color(0xFFE7ECEF);
    Offset distance = const Offset(10, 10);
    double blur = 20;

    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: backgroundColor,
            boxShadow: [
              BoxShadow(
                blurRadius: blur,
                offset: distance,
                color: Colors.white,
              ),
              BoxShadow(
                blurRadius: blur,
                offset: distance,
                color: const Color(0xFFA7A9AF),
              ),
            ],
          ),
          child: SizedBox(
            width: double.infinity,
            height: size.height * .25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 25, color: Colors.black87, letterSpacing: 1.5),
                ),
                widget,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
