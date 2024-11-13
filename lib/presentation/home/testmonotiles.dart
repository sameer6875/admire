import 'package:flutter/material.dart';

class Testimonials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
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
                        Row(
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
                        ),
                        SizedBox(height: 20),
                        Text(
                          'We are trusted by clients from various industries who appreciate our dedication and expertise.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[700],
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 40),
                        Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children: [
                            TestimonialCard(
                              name: "John Doe",
                              position: "CEO, Tech Innovators",
                              testimonial:
                              "Adymize has transformed our digital presence. Their expertise in SEO and content strategy has driven our website to the top of search results.",
                              imageUrl: "https://via.placeholder.com/100",
                            ),

                            TestimonialCard(
                              name: "Alex Johnson",
                              position: "Founder, StartUp XYZ",
                              testimonial:
                              "Working with Adymize was a game-changer for us. Their insights and strategies delivered exceptional results for our campaigns.",
                              imageUrl: "https://via.placeholder.com/100",
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey[400],
                          thickness: 1,
                          indent: screenWidth > 800 ? 100 : 0,
                          endIndent: screenWidth > 800 ? 100 : 0,
                        ),
                        const SizedBox(height: 20),
                        _buildLogoGrid()
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
  Widget _buildLogoGrid() {
    final logos = [
      'https://marketplace.canva.com/EAE0rNNM2Fg/1/0/1600w/canva-letter-c-trade-marketing-logo-design-template-r9VFYrbB35Y.jpg', // Replace with actual image URLs
      'https://marketplace.canva.com/EAE0rNNM2Fg/1/0/1600w/canva-letter-c-trade-marketing-logo-design-template-r9VFYrbB35Y.jpg', // Replace with actual image URLs
      'https://marketplace.canva.com/EAE0rNNM2Fg/1/0/1600w/canva-letter-c-trade-marketing-logo-design-template-r9VFYrbB35Y.jpg', // Replace with actual image URLs
      'https://marketplace.canva.com/EAE0rNNM2Fg/1/0/1600w/canva-letter-c-trade-marketing-logo-design-template-r9VFYrbB35Y.jpg', // Replace with actual image URLs
      'https://marketplace.canva.com/EAE0rNNM2Fg/1/0/1600w/canva-letter-c-trade-marketing-logo-design-template-r9VFYrbB35Y.jpg', // Replace with actual image URLs
      'https://marketplace.canva.com/EAE0rNNM2Fg/1/0/1600w/canva-letter-c-trade-marketing-logo-design-template-r9VFYrbB35Y.jpg', // Replace with actual image URLs
      'https://marketplace.canva.com/EAE0rNNM2Fg/1/0/1600w/canva-letter-c-trade-marketing-logo-design-template-r9VFYrbB35Y.jpg', // Replace with actual image URLs
      'https://marketplace.canva.com/EAE0rNNM2Fg/1/0/1600w/canva-letter-c-trade-marketing-logo-design-template-r9VFYrbB35Y.jpg', // Replace with actual image URLs

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

class TestimonialCard extends StatelessWidget {
  final String name;
  final String position;
  final String testimonial;
  final String imageUrl;

  TestimonialCard({
    required this.name,
    required this.position,
    required this.testimonial,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            position,
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
          SizedBox(height: 20),
          Text(
            '"$testimonial"',
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
