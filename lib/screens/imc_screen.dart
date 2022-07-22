import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:imccalc/helper/gender_enum.dart';
import 'package:imccalc/widgets/container_aux.dart';
import 'package:imccalc/widgets/container_bottom.dart';
import 'package:imccalc/widgets/container_middle.dart';

class ImcScreen extends StatefulWidget {
  const ImcScreen({Key? key}) : super(key: key);

  @override
  State<ImcScreen> createState() => _ImcScreenState();
}

class _ImcScreenState extends State<ImcScreen> {
  bool isMale = false;
  bool isFemale = false;
  int altura = 160;
  int peso = 40;

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFFE7ECEF);
    Offset distanceMale = isMale ? const Offset(10, 10) : const Offset(20, 20);
    double blurMale = isMale ? 5 : 30;
    Offset distanceFemale =
        isFemale ? const Offset(10, 10) : const Offset(20, 20);
    double blurFemale = isFemale ? 5 : 30;
    Gender selectedGender;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: backgroundColor,
        title: const Text(
          'IMCCalc',
          style: TextStyle(
              color: Colors.black54,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //Top
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.Masculino;
                        if (selectedGender == Gender.Masculino) {
                          isMale = !isMale;
                          isFemale = false;
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: backgroundColor,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: blurMale,
                              offset: -distanceMale,
                              color: Colors.white,
                              inset: isMale,
                            ),
                            BoxShadow(
                              blurRadius: blurMale,
                              offset: distanceMale,
                              color: const Color(0xFFA7A9AF),
                              inset: isMale,
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: 210,
                          height: size.height * .25,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.male,
                                size: 80,
                                color: Colors.black87,
                              ),
                              Text(
                                'MASCULINO',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.Feminino;
                      if (selectedGender == Gender.Feminino) {
                        isFemale = !isFemale;
                        isMale = false;
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: backgroundColor,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: blurFemale,
                            offset: -distanceFemale,
                            color: Colors.white,
                            inset: isFemale,
                          ),
                          BoxShadow(
                            blurRadius: blurFemale,
                            offset: distanceFemale,
                            color: const Color(0xFFA7A9AF),
                            inset: isFemale,
                          )
                        ],
                      ),
                      child: SizedBox(
                        width: 210,
                        height: size.height * .25,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.female, size: 80, color: Colors.black87),
                            Text(
                              'FEMININO',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
              ),
            ],
          ),
          //Middle Card
          ContainerMiddle(
            widget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      altura.toString(),
                      style: const TextStyle(
                          fontSize: 35,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                    const Text(
                      'cm',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black45,
                          letterSpacing: 1.5),
                    ),
                  ],
                ),
                Slider(
                    value: altura.toDouble(),
                    min: 120,
                    max: 200,
                    thumbColor: backgroundColor,
                    inactiveColor: Colors.white,
                    activeColor: Colors.black54,
                    onChanged: (double novaAltura) {
                      setState(() {
                        altura = novaAltura.round();
                      });
                    })
              ],
            ),
          ),
          //Bottom cards
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerBottom(
                text: 'Peso',
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          peso.toString(),
                          style: const TextStyle(
                              fontSize: 35,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                        ),
                        const Text(
                          'kg',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                              letterSpacing: 1.5),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Button 1
                        ContainerAux(
                          icon: Icons.remove,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        //Button 2
                        ContainerAux(icon: Icons.add)
                      ],
                    ),
                  ],
                ),
              ),
              ContainerBottom(text: 'Idade', widget: const Text('')),
            ],
          ),
          //Bottom button
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: backgroundColor,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 30,
                      offset: Offset(20, 20),
                      color: Colors.white,
                    ),
                    BoxShadow(
                      blurRadius: 30,
                      offset: Offset(20, 20),
                      color: Color(0xFFA7A9AF),
                    )
                  ]),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Calcular IMC',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
