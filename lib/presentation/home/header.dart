import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Menu Icon with Popup Menu on Mobile
                  if (constraints.maxWidth <= 600)
                    PopupMenuButton<String>(
                      icon: Icon(Icons.menu, color: Colors.black87),
                      onSelected: (value) {
                        // Handle menu item selection if needed
                      },
                      itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                          value: 'Services',
                          child: Text('Services'),
                        ),
                        PopupMenuItem(
                          value: 'Clients',
                          child: Text('Clients'),
                        ),
                        PopupMenuItem(
                          value: 'Why Adymize?',
                          child: Text('Why Adymize?'),
                        ),
                        PopupMenuItem(
                          value: 'Reviews',
                          child: Text('Reviews'),
                        ),
                        PopupMenuItem(
                          value: 'FAQs',
                          child: Text('FAQs'),
                        ),
                        PopupMenuItem(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF2D2E43), // Dark navy color for button
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            ),
                            child: Text(
                              'Chat Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),

                  // Logo Section
                  Row(
                    children: [
                      Icon(
                        Icons.auto_graph, // Replace with your logo icon
                        color: Color(0xFF7B51FF), // Purple color
                        size: 28,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Adymize',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),

                  // Navigation Links for Larger Screens
                  if (constraints.maxWidth > 600)
                    Row(
                      children: [
                        _buildNavItem('Services'),
                        _buildNavItem('Clients'),
                        _buildNavItem('Why Adymize?'),
                        _buildNavItem('Reviews'),
                        _buildNavItem('FAQs'),
                      ],
                    ),

                  // Chat Button for Larger Screens
                  if (constraints.maxWidth > 600)
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2D2E43), // Dark navy color for button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      ),
                      child: Text(
                        'Chat Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildNavItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
