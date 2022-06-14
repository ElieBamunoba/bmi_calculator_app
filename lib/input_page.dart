import 'package:flutter/material.dart';

import './widgets/card.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: card(const Color(0xff1d1e33)),
                ),
                Expanded(
                  child: card(const Color(0xff1d1e33)),
                )
              ]),
            ),
            Expanded(
              child: Row(children: [
                Expanded(
                  child: card(const Color(0xff1d1e33)),
                ),
              ]),
            ),
            Expanded(
              child: Row(children: [
                Expanded(
                  child: card(const Color(0xff1d1e33)),
                ),
                Expanded(
                  child: card(const Color(0xff1d1e33)),
                )
              ]),
            )
          ],
        ));
  }
}
