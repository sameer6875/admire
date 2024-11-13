import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width to adjust the layout based on it
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
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
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header section with "New!" and title
              Column(
                children: [
                  Text(
                    'NEW!',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Our Services',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              Divider(
                color: Colors.grey[400],
                thickness: 1,
                indent: screenWidth > 800 ? 100 : 0,
                endIndent: screenWidth > 800 ? 100 : 0,
              ),
              const SizedBox(height: 20),
              // Adjust GridView based on screen width
              SizedBox(
                // Adjust height as needed
                child: GridView.count(
                  crossAxisCount: screenWidth > 800 ? 3 : 1, // 4 columns for desktop, 2 for mobile
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 3,
                  shrinkWrap: true, // Ensures it only takes necessary space
                  physics: NeverScrollableScrollPhysics(), // Prevents inner scrolling
                  children: [
                    _buildServiceItem(
                      icon: Icons.campaign_outlined,
                      title: 'Strategic Marketing',
                      description: 'Catalyze your brand into the spotlight with our genius strategies – it\'s like magic, but for marketing.',
                    ),
                    _buildServiceItem(
                      icon: Icons.palette_outlined,
                      title: 'Creative Design',
                      description: 'Picture-perfect branding and graphics – we make your competitors jealous, and your audience adore you.',
                    ),
                    _buildServiceItem(
                      icon: Icons.social_distance_outlined,
                      title: 'Social Media Management',
                      description: 'Hands-free social success! While you focus on your call-to-action, we\'ll make sure your brand shines across all social platforms.',
                    ),
                    _buildServiceItem(
                      icon: Icons.devices_other,
                      title: 'Technical Solutions',
                      description: 'From tech wizardry to seamless online experiences, we turn digital hiccups into high-fives for your users.',
                    ),
                    _buildServiceItem(
                      icon: Icons.trending_up_outlined,
                      title: 'Search Engine Optimization (SEO)',
                      description: 'Boost your online swagger! We\'ll spruce up your website so Google has no choice but to be your biggest fan.',
                    ),
                    _buildServiceItem(
                      icon: Icons.animation_outlined,
                      title: 'Automation Services',
                      description: 'Automatically enhance efficiency! Our automation tricks make your processes smoother than a freshly buttered slide.',
                    ),
                  ],
                ),
              ),

              // Call-to-Action Button
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Want to discuss '),
                      TextSpan(
                        text: 'Let’s Schedule a Call!',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceItem({required IconData icon, required String title, required String description}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.purple, size: 32),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 5),
              Expanded(
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
