import 'package:flutter/material.dart';

import 'widgets.dart';

class TravelScreen extends StatelessWidget {
  const TravelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sports"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalPad10,
            Image.asset(
              "assets/travel.jpg",
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            verticalPad10,
            const Text(
              "Why do we Travel..??",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            verticalPad5,
            const Text(
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries."),
            verticalPad10,
          ],
        ),
      ),
    );
  }
}
