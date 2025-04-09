import 'package:flutter/material.dart';

List<Widget> buildWidget(List<List<Color>> colors, int currentRow,
    List<int> rowsCompleted, BuildContext context) {
  List<Widget> widgets = [];
  for (int i = 0; i < colors.length; i++) {
    RowStatus status = RowStatus.inactive;

    if (rowsCompleted.contains(i)) {
      if (i == currentRow) {
        status = RowStatus.completedSelected;
      } else {
        status = RowStatus.completed;
      }
    } else if (i == currentRow) {
      status = RowStatus.active;
    } else {
      status = RowStatus.inactive;
    }

    widgets.add(ColoredRow(
        colors: colors[i],
        n: colors.length,
        rowStatus: status));
  }
  return widgets;
}

class ColoredRow extends StatefulWidget {
  final List<Color> colors;
  final int n;
  final RowStatus rowStatus;
  const ColoredRow(
      {super.key,
      required this.colors,
      required this.n,
      required this.rowStatus});

  @override
  State<ColoredRow> createState() => _ColoredRowState();
}

enum RowStatus {
  active,
  completedSelected,
  completed,
  inactive,
}

class _ColoredRowState extends State<ColoredRow> {
  @override
  Widget build(BuildContext context) {
    List<Widget> rowWidgets = [];
    Color color = Colors.black;

    


    for (int j = 0; j < widget.colors.length; j++) {
      rowWidgets.add(Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          width: MediaQuery.of(context).size.width / widget.n - 1,
          height: MediaQuery.of(context).size.width / widget.n - 1,
          color: getColor(widget.colors[j]),
        ),
      ));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: rowWidgets,
    );
  }

  Color getColor(Color color) {
    switch (widget.rowStatus) {
      case RowStatus.active:
        return color;
      case RowStatus.completedSelected:
        return const Color.fromARGB(255, 46, 169, 50);
      case RowStatus.completed:
        return const Color.fromARGB(255, 206, 238, 170);
      case RowStatus.inactive:
        return color.withValues(alpha: 0.3);
    }
  }
}

List<List<Color>> testColorList = [
  // 20 rows of 20 colors
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ],
  [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.deepPurple
  ]
];
