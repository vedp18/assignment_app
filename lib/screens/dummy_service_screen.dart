import 'package:flutter/material.dart';

class DummyServiceScreen extends StatelessWidget {
  final String service;

  const DummyServiceScreen({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 23, 28, 1),
        foregroundColor: Colors.white,
        title: Text(
          service,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Lobster',
            fontSize: 27,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(24, 23, 28, 1),
    );
  }
}
