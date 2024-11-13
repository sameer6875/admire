import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return  Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: LayoutBuilder(
                builder: (context, constraints) {
                return Container(
                width: constraints.maxWidth > 800 ? 1200 : double.infinity, // Sets max width for larger screens
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                colors: [Color(0xFFE0E8F9), Color(0xFFFAE8FA)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                ),
                ),
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                'How it starts?',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF6A3DA6),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Divider(
                              color: Colors.grey[400],
                              thickness: 1,
                              indent: screenWidth > 800 ? 100 : 0,
                              endIndent: screenWidth > 800 ? 100 : 0,
                            ),
                            const SizedBox(height: 20),

                            GridView.count(
                                                crossAxisCount: screenWidth > 800 ? 2 : 1, // 4 columns for desktop, 2 for mobile
                                                crossAxisSpacing: 20,
                                                mainAxisSpacing: 20,
                                                childAspectRatio: 1,
                                                shrinkWrap: true, // Ensures it only takes necessary space
                                                physics: NeverScrollableScrollPhysics(), // Prevents inner scrolling
                                                children: [
                                                  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildStep(1, 'Plan Your Growth',
                                  'Dream big, strategize with us, and turn plans into profits.'),
                              const SizedBox(height: 20),
                              _buildStep(2, 'Handover the project',
                                  'We’re your project navigators, turning plans into reality. Smooth sailing guaranteed.'),
                              const SizedBox(height: 20),
                              _buildStep(3, 'Count the profit',
                                  'Sit back, relax, and let the profits set sail. Your success story starts with us!'),
                            ],
                                                  ),
                                                  _buildPhoneMockup(),
                                                ],

                            ),
                          ],
                        ),
                );
                },
                ),
              ),

          ],
        ),
      ),
    );
  }

  Widget _buildStep(int number, String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: Color(0xFFD3C2F3),
          child: Text(
            '$number',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF6A3DA6),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF666666),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPhoneMockup() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          ),
        ],
      ),

    );
  }

}
