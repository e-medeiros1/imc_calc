import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class ContainerMiddle extends StatelessWidget {
  const ContainerMiddle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFFE7ECEF);
    Offset distance = const Offset(20, 20);
    double blur = 30;

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
                offset: distance,
                color: Colors.white,
                inset: false,
              ),
              BoxShadow(
                blurRadius: blur,
                offset: distance,
                color: const Color(0xFFA7A9AF),
                inset: false,
              ),
            ],
          ),
          child: SizedBox(
            width: double.infinity,
            height: size.height * .40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Altura',
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
