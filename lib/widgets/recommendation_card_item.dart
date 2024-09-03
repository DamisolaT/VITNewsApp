import 'package:flutter/material.dart';

class RecommendationCardItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String subTitle;
  final String subDate;

  const RecommendationCardItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description, required this.subTitle, required this.subDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(8.0), // Add padding around the content
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath ,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black26
                  ),
                ),
                SizedBox(height: 4), // Space between title and description
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  children: [
                    Text(
                      subTitle,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      subDate,
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
