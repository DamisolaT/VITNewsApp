
import 'package:flutter/material.dart';
import 'package:vit_news_app/discover_page.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Recommendation",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=> DiscoverPage()));
          },
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

