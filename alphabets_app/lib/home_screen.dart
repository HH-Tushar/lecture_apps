import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late FlutterTts flutterTts;
  final String defaultLanguage = 'en-US';
  String displayText = '';
  double volume = 1; // Range: 0-1
  double rate = 1.0; // Range: 0-2
  double pitch = 1.0; // Range: 0-2

  Future<void> _speak(String text) async {
    await flutterTts.setVolume(volume);
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setPitch(pitch);

    if (text.isNotEmpty) {
      setState(() {
        displayText = text;
      });
      await flutterTts.speak(text);
    }
  }

  Future<void> _getDefaultEngine() async {
    var engine = await flutterTts.getDefaultEngine;
    await flutterTts.getDefaultVoice;
    await flutterTts.setEngine(defaultLanguage);
    if (engine != null) {
      print(engine);
    }
  }

  Future<void> _setAwaitOptions() async {
    await flutterTts.awaitSpeakCompletion(true);
  }

  @override
  void initState() {
    flutterTts = FlutterTts();
    _setAwaitOptions();
    _getDefaultEngine();
    super.initState();
  }

  final List<String> alpha = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alphabets App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              displayText,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                itemCount: alpha.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) => FilledButton.icon(
                  onPressed: () => _speak(alpha[index]),
                  label: Text(alpha[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
