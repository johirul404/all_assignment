import 'package:flutter/material.dart';

class Details13 extends StatefulWidget {
  final int number;
  final VoidCallback onBack;
  const Details13({super.key, required this.number, required this.onBack});

  @override
  State<Details13> createState() => _Details13State();
}

class _Details13State extends State<Details13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              'Received Current Value',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.number.toString(),
              style: TextStyle(fontSize: 100, color: Colors.black),
            ),
            ElevatedButton(onPressed: widget.onBack, child: Text('Back')),
          ],
        ),
      ),
    );
  }
}
