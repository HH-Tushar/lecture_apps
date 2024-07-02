import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



Widget buildImage(String urlImage, int index) =>
    Image.asset(urlImage, fit: BoxFit.cover);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final urlImages = [
      "assets/car_1.jpg",
      "assets/car_2.jpg",
      "assets/car_3.jpg",
      "assets/car_4.jpg",
      // "assets/car_4.jpg",
    ];
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text("Swipe Gallery App"),centerTitle: true,),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];
            return buildImage(urlImage, index);
          },
          options: CarouselOptions(
            height: 400,
            autoPlay: false,
            enlargeCenterPage: true,
            // onPageChanged: (index, reason) =>
            //     setState(() => activeIndex = index),
          ),
        ),
      ),
    );
  }
}
