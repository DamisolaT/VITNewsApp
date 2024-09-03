import 'package:flutter/material.dart';

class SportCardItem extends StatelessWidget {
  const SportCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Image.asset(
                "assets/images/bicycle_img2.png",
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 200,
              ),
              Positioned(
                bottom: 150, // Position the text at the bottom
                left: 16,   // Position the text from the left
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Text(
                    "Sports",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,

                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 66, // Position the text at the bottom
                left: 16,   // Position the text from the left
                child: Row(
                  children: [
                    Text(
                      "CNNdonesia",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)
                      ),
                        child: Icon(Icons.check,color: Colors.white,)),
                    SizedBox(width: 10,),
                    Text("6hoursago",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 40, // Position the text at the bottom
                left: 16,   // Position the text from the left
                child: Text(
                  "Alexanderwearsmodified",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 16,
                child: Text(
                  "helmet in road race",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
