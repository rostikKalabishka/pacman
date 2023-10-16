import 'package:flutter/material.dart';

class PacMan extends StatefulWidget {
  const PacMan({super.key});

  @override
  State<PacMan> createState() => _PacManState();
}

class _PacManState extends State<PacMan> {
  static const int numberInRow = 11;
  final int numberOfSquare = numberInRow * 17;

  List<int> barreries = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
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
                      return Padding(
                        padding: const EdgeInsets.all(1),
                        child: Container(
                          color: Colors.grey,
                          child: Text(index.toString()),
                        ),
                      );
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
