import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

// ignore: must_be_immutable
class ContainerAux extends StatefulWidget {
  IconData icon;

  ContainerAux({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  State<ContainerAux> createState() => _ContainerAuxState();
}

class _ContainerAuxState extends State<ContainerAux> {
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Listener(
      onPointerUp: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onPointerDown: (_) {
        setState(() {
          isPressed = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFE7ECEF),
          boxShadow: isPressed
              ? []
              : [
                  const BoxShadow(
                    blurRadius: 5,
                    offset: Offset(-4, -4),
                    color: Colors.white,
                    inset: true,
                    spreadRadius: 1,
                  ),
                  const BoxShadow(
                    blurRadius: 5,
                    offset: Offset(4, 4),
                    color: Color(0xFFA7A9AF),
                    inset: true,
                    spreadRadius: 1,
                  ),
                ],
        ),
        width: size.width * .17,
        height: size.height * .08,
        child: Icon(
          widget.icon,
          color: Colors.black54,
        ),
      ),
    );
  }
}
