import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {

  final String title;
  final String count;
  final IconData icon;
  final Color color;

  const DashboardCard({
    super.key,
    required this.title,
    required this.count,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
            BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: Colors.grey
                .withValues(alpha: 0.1),

            blurRadius: 10,
          ),
        ],
      ),

      child: Column(

        children: [

          CircleAvatar(
            radius: 28,
            backgroundColor:
                color.withValues(alpha: 0.15),

            child: Icon(
              icon,
              color: color,
              size: 28,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            count,
            style: const TextStyle(
              fontSize: 28,
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            title,
            style: TextStyle(
              color:
                  Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}