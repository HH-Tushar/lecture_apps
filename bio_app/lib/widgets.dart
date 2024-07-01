import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget customButton({required String buttonName, required VoidCallback onTab}) {
  return MaterialButton(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
    onPressed: onTab,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    color: Colors.purple.shade700,
    child: Text(
      buttonName,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}

SizedBox verticalPad10 = const SizedBox(height: 10);
SizedBox verticalPad5 = const SizedBox(height: 5);
SizedBox verticalPad20 = const SizedBox(height: 20);
