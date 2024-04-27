import 'package:flutter/material.dart';

class MealDeal{
  final String imageUrl;
  final String title;
  final String description;

  const MealDeal(
    {
    required this.description,
    required this.imageUrl,
    required this.title,
    }
  );
}

class MealsDealsCard extends StatelessWidget {
  final MealDeal mealDeal;

  const MealsDealsCard(
    {super.key, required this.mealDeal}
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 15.0, right: 2.0, bottom: 2.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        elevation: 3,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: 220.0, 
          width: 200.0,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0),),
                child: AspectRatio(
                  aspectRatio: 16/10, 
                  child: Image.asset(mealDeal.imageUrl, fit: BoxFit.cover)
                )
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 12.0, right: 7.0, bottom: 7.0),
                        child: Column(  // Inner column for title and description
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              mealDeal.title,
                              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis
                            ),
                            const SizedBox(height: 6.0), // Add some space between title and desc
                            Text(
                              mealDeal.description,
                              style: const TextStyle(
                                color: Colors.grey
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}