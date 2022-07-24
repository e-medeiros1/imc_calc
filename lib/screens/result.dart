import 'package:flutter/material.dart';
import 'package:imccalc/screens/imc_screen.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFFE7ECEF);
    // Size size = MediaQuery.of(context).size;
    // const distance = Offset(5, 5);
    // const double blur = 20;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Seu IMC é: ',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                '18.4',
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Você está abaixo do peso',
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Listener(
                  onPointerUp: (_) {
                    setState(() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ImcScreen(),
                          ));
                      isPressed = false;
                    });
                  },
                  onPointerDown: (_) {
                    setState(() {
                      isPressed = true;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: backgroundColor,
                        boxShadow: isPressed
                            ? []
                            : [
                                const BoxShadow(
                                  blurRadius: 10,
                                  offset: Offset(-5, -5),
                                  color: Colors.white,
                                ),
                                const BoxShadow(
                                  blurRadius: 20,
                                  offset: Offset(10, 10),
                                  color: Color(0xFFA7A9AF),
                                ),
                              ]),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Refazer',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.restart_alt,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
