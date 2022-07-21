import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:imccalc/helper/gender_enum.dart';
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

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFFE7ECEF);
    Offset distanceMale = isMale ? const Offset(10, 10) : const Offset(20, 20);
    double blurMale = isMale ? 5 : 30;
    Offset distanceFemale =
        isFemale ? const Offset(10, 10) : const Offset(20, 20);
    double blurFemale = isFemale ? 5 : 30;
    Gender selectedGender;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        title: const Text(
          'IMCCalc',
          style: TextStyle(color: backgroundColor, letterSpacing: 1.5),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //Top
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
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
                        width: 200,
                        height: 180,
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
              Center(
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
                      width: 200,
                      height: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.female, size: 80, color: Colors.black87),
                          Text(
                            'FEMININO',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
            ],
          ),
          const ContainerMiddle(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerBottom(text: 'Peso'),
              ContainerBottom(text: 'Idade'),
            ],
          ),
        ],
      ),
    );
  }
}
