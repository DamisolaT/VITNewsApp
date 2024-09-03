
import 'package:flutter/material.dart';
import 'package:vit_news_app/widgets/category_buttons.dart';
import 'package:vit_news_app/widgets/recommendation_card_item.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(16.0),
           child: SafeArea(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   Text("Discover",
                   style: TextStyle(
                     fontSize: 40,
                     fontWeight: FontWeight.bold,
                     color: Colors.black
                   ),),
                   Text("News from all around the world",
                   style: TextStyle(
                     color: Colors.black26
                   ),),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search, size: 30.0,),
                    filled: true,
                    fillColor: Colors.grey[200],
                    suffixIcon: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.tune))
                  ),
                ),
                SizedBox(height: 20,),
                CategoryButtons(
                  categories: ['All', 'Politic', 'Sport', 'Education', 'Games'],
                  onSelected: (index) {},
                ),
                SizedBox(height: 20,),
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
                  description: "Secondary School Places: What Do Parent Find Out?",
                  subTitle: 'McKindney',
                  subDate: "Feb 27,2023",
                ),
                SizedBox(height: 10,),
                RecommendationCardItem(
                  imagePath: "assets/images/volley_img.png",
                  title: "sport",
                  description: "6 Houses Destroyed In Massive Fire In Assam's K",
                  subTitle: 'McKindney',
                  subDate: "Feb 27,2023",
                ),
                SizedBox(height: 10,),
                RecommendationCardItem(
                  imagePath: "assets/images/volley_img.png",
                  title: "sport",
                  description: "Atlease 35 People Killed In Seperate road crashed in As",
                  subTitle: 'McKindney',
                  subDate: "Feb 27,2023",
                ),
                SizedBox(height: 10,),
                RecommendationCardItem(
                  imagePath: "assets/images/volley_img.png",
                  title: "sport",
                  description: "Atlease 35 People Killed In Seperate road crashed in As",
                  subTitle: 'McKindney',
                  subDate: "Feb 27,2023",
                ),

         
         
         
              ],
               ),
         )),
       ));

  }
}
