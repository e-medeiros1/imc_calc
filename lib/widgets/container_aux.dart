import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class ContainerAux extends StatelessWidget {
  IconData icon;

  ContainerAux({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFE7ECEF),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(-10, -10),
            color: Colors.white,
            inset: true,
          ),
          BoxShadow(
            blurRadius: 5,
            offset: Offset(10, 10),
            color: Color(0xFFA7A9AF),
            inset: true,
          ),
        ],
      ),
      width: 70,
      height: 70,
      child: Icon(
        icon,
        color: Colors.black54,
      ),
    );
  }
}
