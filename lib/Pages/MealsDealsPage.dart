import 'package:flutter/material.dart';
import 'package:uts_kevinsadino/widgets/CardVerticalMeals.dart';
import 'package:uts_kevinsadino/widgets/MealsDealsCard.dart';

class MealsDealsPage extends StatelessWidget {
  final List <MealDeal> mealDeals;
  const MealsDealsPage({super.key, required this.mealDeals});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Meals Deals',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                semanticLabel: 'Back',
                color: Colors.black,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
            centerTitle: true,
            elevation: 0.0,
        ),

        body: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: mealDeals.length,
          separatorBuilder: (context, index) => const SizedBox(),
          itemBuilder: (context, index) => CardVerticalMeals(mealsDeals: mealDeals[index]),
        ),
      ),
    );
  }
}