import 'package:flutter/material.dart';


class Home13 extends StatefulWidget {
  final int number;
  final VoidCallback onIncrement;
  final VoidCallback OnDecrement;
  const Home13({
    super.key,
    required this.number,
    required this.onIncrement,
    required this.OnDecrement,
  });

  @override
  State<Home13> createState() => _Home13State();
}

class _Home13State extends State<Home13> {
  //int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              'Current Value',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
                letterSpacing: 2,
              ),
            ),
            Text(
              widget.number.toString(),
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Center(
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  ElevatedButton(
                    onPressed: widget.onIncrement,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Increment',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: widget.OnDecrement,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Decrement',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
