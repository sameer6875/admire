import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blueGrey,
      child: Column(
        children: [
          Text(
            'Contact Us',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'Email: info@adymize.com | Phone: +1234567890',
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
