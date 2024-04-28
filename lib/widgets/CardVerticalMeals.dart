import 'package:flutter/material.dart';
import 'package:uts_kevinsadino/widgets/MealsDealsCard.dart';

class CardVerticalMeals extends StatelessWidget {
  final MealDeal mealsDeals;

  const CardVerticalMeals({super.key, required this.mealsDeals});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 7.0, 12.0, 7.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 3,
        clipBehavior: Clip.antiAlias,
        child: Flexible(
          child: SizedBox(
          height: 340.0,
          width: 350.0, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: AspectRatio(
                  aspectRatio: 16/10, 
                  child: Image.asset(
                    mealsDeals.imageUrl,
                    fit: BoxFit.cover,
                  ), 
                )        
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0, left: 12.0, right: 7.0, bottom: 7.0),
                      child: Column(  // Inner column for title and description
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            mealsDeals.title,
                            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10.0), // Add some space between title and desc
                          Text(
                            mealsDeals.description,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        )
      ),
    );
  }
}