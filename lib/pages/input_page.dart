import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/icon_content.dart';
import '../widgets/card.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xffeb1555);
const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);

enum Gender {
  male,
  female,
  unselected,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.unselected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.mars, lable: 'MALE'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.venus, lable: 'FEMAL'),
                  color: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                ),
              )
            ]),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: Text(""),
              ),
            ]),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(""),
                ),
                Expanded(
                  child: Text(""),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(
              top: 10,
            ),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
