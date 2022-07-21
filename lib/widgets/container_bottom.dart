import 'package:flutter/material.dart';

class ContainerBottom extends StatelessWidget {
  String text;
  ContainerBottom({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const backgroundColor = Color(0xFFE7ECEF);
    Offset distance = const Offset(20, 20);
    double blur = 30;

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
