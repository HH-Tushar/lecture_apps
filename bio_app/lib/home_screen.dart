import 'package:flutter/material.dart';

import 'fast_facts.dart';
import 'sports_screen.dart';
import 'travel_screen.dart';
import 'widgets.dart';
import 'work_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(-2, -2),
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        spreadRadius: 5),
                    BoxShadow(
                        offset: const Offset(2, 2),
                        color: Colors.grey.shade500,
                        blurRadius: 5,
                        spreadRadius: 5),
                  ]),
              child: Image.asset(
                "assets/avater.jpg",
                height: 300,
                fit: BoxFit.fitHeight,
              ),
            ),
            verticalPad20,
            customButton(
              buttonName: "Fast Facts",
              onTab: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const FastFactsScreen(),
                ),
              ),
            ),
            verticalPad10,
            customButton(
              buttonName: "Work",
              onTab: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const WorkScreen(),
                ),
              ),
            ),
            verticalPad10,
            customButton(
              buttonName: "Sport",
              onTab: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SportsScreen(),
                ),
              ),
            ),
            verticalPad10,
            customButton(
              buttonName: "Travel",
              onTab: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const TravelScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
