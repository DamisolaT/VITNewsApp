

import 'package:flutter/material.dart';
import 'package:vit_news_app/widgets/breaking_news_card.dart';
import 'package:vit_news_app/widgets/recommendation_card.dart';
import 'package:vit_news_app/widgets/recommendation_card_item.dart';
import 'package:vit_news_app/widgets/sport_card_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(36)
          ),
          child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu)
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(36)
            ),
            child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.search)),
          ),
          SizedBox(width: 10,),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(36)
            ),
            child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.notifications)),
          )
        ],
      ),
     body: SingleChildScrollView(
       child: SafeArea(
           child:Column(
             children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: BreakingNewsCard(),
                ),
               SportCardItem(),
               SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RecommendationCard(),
              ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Column(
                   children: [
                     RecommendationCardItem(
                       imagePath: "assets/images/volley_img.png",
                       title: "sport",
                       description: "What Training Do VolleyBall PlayersNeed",
                       subTitle: 'McKindney',
                       subDate: "Feb 27,2023",
                     ),
                     SizedBox(height: 10,),
                     RecommendationCardItem(
                       imagePath: "assets/images/volley_img.png",
                       title: "sport",
                       description: "What Training Do VolleyBall PlayersNeed",
                       subTitle: 'McKindney',
                       subDate: "Feb 27,2023",
                     ),
       
                   ],
                 ),
               )
       
       
             ],
       
           )
       ),
     ),
    );
  }
}
