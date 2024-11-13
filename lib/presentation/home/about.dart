import 'dart:ui';

import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Us',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'We are a leading digital marketing agency that delivers innovative solutions to boost your online presence. Our expert team focuses on maximizing your reach, improving your digital strategy, and driving business growth.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AboutInfoCard(
                icon: Icons.group,
                title: "Our Team",
                description: "A dedicated team of experts with years of experience.",
              ),
              AboutInfoCard(
                icon: Icons.bar_chart,
                title: "Our Mission",
                description: "To provide effective digital solutions and achieve lasting results.",
              ),
              AboutInfoCard(
                icon: Icons.workspace_premium,
                title: "Our Vision",
                description: "To be a leader in digital marketing by empowering businesses worldwide.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AboutInfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  AboutInfoCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(icon, size: 40, color: Colors.blueAccent),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
