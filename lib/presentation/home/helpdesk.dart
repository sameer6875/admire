import 'package:flutter/material.dart';

class HelpSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                _buildHeader(),
                const SizedBox(height: 20),
                _buildFAQList(),
              ],
            ),
          ),
        );
            },
        ),

    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Need Help?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF6A3DA6),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          '🤔',
          style: TextStyle(fontSize: 32),
        ),
      ],
    );
  }

  Widget _buildFAQList() {
    return Column(
      children: [
        _buildFAQItem(
          question: 'Why should I choose Adymize over other agencies?',
          answer: 'Choosing Adymize means choosing a results-driven, client-focused, and technologically advanced digital marketing partner.With a proven track record, personalized strategies, and a commitment to transparent communication, we are confident in our ability to elevate your online presence and drive sustainable business growth.',
        ),
        _buildFAQItem(
          question: 'What sets Adymize apart from the competition?',
          answer:
          'Adymize stands out in the crowded digital advertising landscape by offering a potent combination of advanced technology, customization options, data-driven insights, and a proven track record.',
        ),
        _buildFAQItem(
          question: 'How can Adymize guarantee accurate reporting?',
          answer: 'Adymize s commitment to accuracy is upheld through advanced technology, real-time validation, transparency, a knowledgeable team, and a rigorous quality control process.By choosing Adymize, clients can trust that their reporting is reliable and reflects the most accurate and current data available.',
        ),
      ],
    );
  }

  Widget _buildFAQItem({required String question, required String answer}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ExpansionTile(
        title: Text(
          question,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF333333),
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          if (answer.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                answer,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF666666),
                ),
              ),
            ),
        ],
        trailing: Icon(
          Icons.add,
          color: Color(0xFF6A3DA6),
        ),
        iconColor: Color(0xFF6A3DA6),
        collapsedIconColor: Color(0xFF6A3DA6),
      ),
    );
  }
}
