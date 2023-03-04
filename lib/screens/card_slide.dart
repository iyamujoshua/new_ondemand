import 'package:flutter/material.dart';
import 'package:ondemand/screens/homescreen.dart';

class CardCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView(
        children: [
          _buildCard("Image 1", "Description 1", "asset/banner.png"),
          _buildCard("", " ", "asset/banner.png"),
          _buildCard("", "", "asset/banner.png"),
        ],
      ),
    );
  }

  Widget _buildCard(String title, String subtitle, String image) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(title),
                // SizedBox(height: 4),
                // Text(subtitle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
