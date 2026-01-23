import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _buildPage(context, "Learn", "Access thousands of skills from experts.", Colors.blue),
          _buildPage(context, "Teach", "Share your passion and help others grow.", Colors.green),
          _buildPage(context, "Earn", "Get paid for your expertise worldwide.", Colors.orange),
        ],
      ),
    );
  }

  Widget _buildPage(BuildContext context, String title, String sub, Color color) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(sub, textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
