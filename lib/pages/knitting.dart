import 'package:Knitscroller/image_processor.dart';
import 'package:flutter/material.dart';

class KnittingPage extends StatefulWidget {
  const KnittingPage({super.key});

  @override
  State<KnittingPage> createState() => _KnittingPageState();
}

class _KnittingPageState extends State<KnittingPage> {
  int currentRow = 0;
  List<int> rowsCompleted = [];

  List<List<Color>> colors = testColorList;

  void updateRow(int newRow) {
    setState(() {
      if (newRow < 0) {
        newRow = 0;
      } else if (newRow >= colors.length) {
        newRow = colors.length - 1;
      }
      currentRow = newRow;
    });
  }

  void toggleRow(int row) {
    setState(() {
      if (rowsCompleted.contains(row)) {
        rowsCompleted.remove(row);
      } else {
        rowsCompleted.add(row);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const SizedBox(
          height: 40,
        ),
        const Center(
          child: Text(
            'Knitscroller',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                buildWidget(colors, currentRow, rowsCompleted, context)),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {
                updateRow(currentRow - 1);
              },
              icon: const Icon(Icons.arrow_upward),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {
                updateRow(currentRow + 1);
              },
              icon: const Icon(Icons.arrow_downward),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {
                toggleRow(currentRow);
              },
              icon: const Icon(Icons.check),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Reset all button
            
            // Go to bottom button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentRow = testColorList.length - 1;
                });
              },
              child: const Text('Go to Bottom'),
            ),
            const SizedBox(
              width: 20,
            ),
            // Go to top button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentRow = 0;
                });
              },
              child: const Text('Go to Top'),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Reset all button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  rowsCompleted.clear();
                });
              },
              child: const Text('Reset All'),
            ),
          ],
        ),
      ],
    ));
  }
}
