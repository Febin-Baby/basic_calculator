import 'package:flutter/material.dart';
import 'package:newone/view/calculator_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.deepOrange,
          child: CalculatorView(),
        ),
      ),
    );
  }
}
