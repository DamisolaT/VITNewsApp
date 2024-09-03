
import 'package:flutter/material.dart';

class BreakingNewsCard extends StatelessWidget {
  const BreakingNewsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Breaking News",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "View all",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                ),
          ),
        ),
      ],
    );
  }
}

