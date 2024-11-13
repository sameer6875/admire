import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFE0E8F9), Color(0xFFFAE8FA)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple[900],
              ),
              children: [
                TextSpan(text: "Optimize Your Ads\n"),
                TextSpan(
                  text: "For More Profit.",
                  style: TextStyle(color: Colors.purpleAccent[700]),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),

          // Subtitle
          Text(
            '3+ years | 50+ Brands | 35+ Crore Ad spent\n'
                'A dedicated team of specialists, delivering remarkable work to our clients worldwide!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
          SizedBox(height: 25),

          // Button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple[900],
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Book a Strategy Call',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),

          // Certifications
          Text(
            'Our Performance Marketing Services are Certified by',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(width: 20),
              Image.asset(
                'assects/stripgoogle.png', // Replace with your image path
                width: 250,
              ),
              SizedBox(width: 20),

            ],
          ),
        ],
      ),
    );
  }
}
