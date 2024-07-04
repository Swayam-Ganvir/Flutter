import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculationButton extends StatelessWidget {
  const CalculationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Provider.of<CalculatorProvider>(context, listen: false).setValue("="),
      child: Container(
        height: 160,
        width: 78,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 4, 25, 77),
            borderRadius: BorderRadius.circular(40)),
        child: const Center(
          child: Text("=", style: TextStyle(fontSize: 32)),
        ),
      ),
    );
  }
}