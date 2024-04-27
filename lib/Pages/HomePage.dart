import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uts_kevinsadino/widgets/HeaderImageWidget.dart';
import 'package:uts_kevinsadino/widgets/MealsDealsCard.dart';
import 'package:uts_kevinsadino/widgets/MostPopularCard.dart';
import 'package:uts_kevinsadino/widgets/SearchBarWidget.dart';
import 'package:uts_kevinsadino/Pages/MealsDealsPage.dart';
import 'package:uts_kevinsadino/Pages/MostPopularPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  final List<MealDeal> mealDeals = [
    const MealDeal(
      imageUrl: 'assets/katsu_curry.jpg',
      title: 'Chicken Curry Rice',
      description: 'Chicken katsu curry rice is a delightful Japanese comfort food that combines crispy and creamy textures with rich flavors.',
    ),
    const MealDeal(
      imageUrl: 'assets/beef_udon.jpg',
      title: 'Niku Beef Udon',
      description: 'Beef udon is a comforting Japanese noodle soup perfect for warming you up. It features thick, chewy udon noodles served in a steaming hot, savory broth.',
    ),
    const MealDeal(
      imageUrl: 'assets/gyoza.jpg',
      title: 'Gyoza',
      description: 'Gyoza are crescent-shaped Japanese dumplings filled with savory goodness, most commonly a combination of ground pork, cabbage, chives, and seasonings.',
    ),

    const MealDeal(
      imageUrl: 'assets/donburi.jpeg',
      title: 'Donburi',
      description: 'Donburi, a comforting Japanese dish, is essentially a hearty one-bowl meal featuring fluffy steamed rice generously topped with various ingredients.',
    ),

    const MealDeal(
      imageUrl: 'assets/yakitori.jpeg',
      title: 'Yakitori',
      description: 'Yakitori, meaning "grilled bird" in Japanese, is a popular skewered chicken treat perfect for a casual meal or snack.',
    ),
  ];

  final List<MostPopular> mostPopularMenu = [
    const MostPopular(
      imageUrl: 'assets/sushi.jpeg',
      title: 'Sushi Midori',
      description: 'Sushi, Kyoto',
      address: '2F Akasaka Biz Tower'
    ),

    const MostPopular(
      imageUrl: 'assets/ramen3.jpeg',
      title: 'Ichiran Ramen',
      description: 'Ramen, Osaka',
      address: 'Jinnan, 1 Chome-22-7'
    ),

    const MostPopular(
      imageUrl: 'assets/sashimi3.jpg',
      title: 'Mominoki House',
      description: 'Sashimi, Shibuya',
      address: '2 Chome-18-5 Jingumae'
    ),

    const MostPopular(
      imageUrl: 'assets/soba.jpeg',
      title: 'Soba Noodles Tsuta',
      description: 'Soba, Shibuya',
      address: '1 Chome-14, Sugamo'
    ),

    const MostPopular(
      imageUrl: 'assets/tempura.jpeg',
      title: 'Narisawa',
      description: 'Tempura, Tokyo',
      address: '2-6-15 Minami Aoyama'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SearchBarWidget(),

            const HeaderImageWidget(),

            Padding(
              padding: const EdgeInsets.only(
              top: 10.0, left: 20.0, right: 15.0, bottom: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Most Popular',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTap: () {
                          Navigator.push( // Use Navigator.push for navigation
                            context,
                            MaterialPageRoute(builder: (context) => MostPopularPage(mostPopular: mostPopularMenu)),
                          );
                        },
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan[300],
                          ),
                        ),
                      );
                    }
                  ),
                ],
              ),
            ),

            SizedBox(
            height: 245.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: mostPopularMenu.length,
              separatorBuilder: (context, index) => const SizedBox(width: 1),
              itemBuilder: (context, index) => MostPopularCard(mostPopularMenu: mostPopularMenu[index]),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 20.0, right: 15.0, bottom: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Meals Deals',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MealsDealsPage(mealDeals: mealDeals)),
                          );
                        },
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan[300],
                          ),
                        ),
                      );
                    }
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 245.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: mealDeals.length,
                separatorBuilder: (context, index) => const SizedBox(width: 1.0),
                itemBuilder: (context, index) => MealsDealsCard(mealDeal: mealDeals[index]),
              ),
            ),

            SizedBox(height: 15.0)
          ],
        ),
      );
  }
}