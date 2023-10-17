import 'package:flutter/material.dart';
import 'package:pacman/pixel.dart';

class PacMan extends StatefulWidget {
  const PacMan({super.key});

  @override
  State<PacMan> createState() => _PacManState();
}

class _PacManState extends State<PacMan> {
  static const int numberInRow = 11;
  final int numberOfSquare = numberInRow * 17;

  List<int> barreries = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    22,
    33,
    44,
    55,
    66,
    77,
    88,
    99,
    110,
    121,
    132,
    143,
    154,
    165,
    176,
    177,
    178,
    179,
    180,
    181,
    182,
    183,
    184,
    185,
    186,
    175,
    164,
    153,
    142,
    131,
    120,
    109,
    98,
    87,
    76,
    65,
    54,
    43,
    32,
    21,
    10
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: numberOfSquare,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: numberInRow),
                    itemBuilder: (BuildContext context, int index) {
                      if (barreries.contains(index)) {
                        return Pixel(
                          color: Colors.blue,
                          innerColor: Colors.blue[800],
                          child: Text(index.toString()),
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsets.all(1),
                          child: Container(
                            color: Colors.grey,
                            child: Text(index.toString()),
                          ),
                        );
                      }
                    },
                  ),
                )),
            Expanded(
                child: Container(
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Score:',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      'P L A Y',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ]),
            )),
          ],
        ),
      ),
    );
  }
}
