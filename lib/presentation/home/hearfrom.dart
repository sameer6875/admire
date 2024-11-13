import 'package:flutter/material.dart';

class TestimonialsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            _buildHeader(),
            const SizedBox(height: 20),
            _buildReviews(),
            const SizedBox(height: 20),
            _buildLogoGrid(),
          ],
        ),
      );

  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '👍',
          style: TextStyle(fontSize: 32),
        ),
        const SizedBox(width: 10),
        Text(
          'Hear from them',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF6A3DA6),
          ),
        ),
      ],
    );
  }

  Widget _buildReviews() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildReviewCard(
          imageUrl: 'https://via.placeholder.com/150', // Replace with actual image URL
          name: 'Harish Deshmukh',
          review:
          'Harish effortlessly launched his course to stardom with Aayumi\'s magic touch',
        ),
        const SizedBox(width: 20),
        _buildReviewCard(
          imageUrl: 'https://via.placeholder.com/150', // Replace with actual image URL
          name: 'Rahul',
          review:
          'Rahul reworked his strategy to wonders with Aayumi\'s magic touch',
        ),
      ],
    );
  }

  Widget _buildReviewCard({
    required String imageUrl,
    required String name,
    required String review,
  }) {
    return Container(
      width: 180,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFE9F0FF), Color(0xFFD3C2F3)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF333333),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            review,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF666666),
            ),
          ),
          const SizedBox(height: 10),
          _buildAudioControls(),
        ],
      ),
    );
  }

  Widget _buildAudioControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.play_arrow, color: Color(0xFF6A3DA6)),
        Slider(
          value: 0.5,
          onChanged: (value) {},
          activeColor: Color(0xFF6A3DA6),
          inactiveColor: Color(0xFFDDDDDD),
        ),
        Icon(Icons.volume_up, color: Color(0xFF6A3DA6)),
      ],
    );
  }

  Widget _buildLogoGrid() {
    final logos = [
      'https://via.placeholder.com/80', // Replace with actual image URLs
      'https://via.placeholder.com/80',
      'https://via.placeholder.com/80',
      'https://via.placeholder.com/80',
      'https://via.placeholder.com/80',
      'https://via.placeholder.com/80',
      'https://via.placeholder.com/80',
      'https://via.placeholder.com/80',
    ];

    return GridView.builder(
      padding: EdgeInsets.symmetric(vertical: 10),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemCount: logos.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
              ),
            ],
          ),
          child: Image.network(
            logos[index],
            fit: BoxFit.contain,
          ),
        );
      },
    );
  }
}
