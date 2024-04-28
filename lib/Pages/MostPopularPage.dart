import 'package:flutter/material.dart';
import 'package:uts_kevinsadino/widgets/CardVerticalPopular.dart';
import 'package:uts_kevinsadino/widgets/MostPopularCard.dart';

class MostPopularPage extends StatelessWidget {
  final List <MostPopular> mostPopular;
  const MostPopularPage({super.key, required this.mostPopular});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Most Popular',
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

        body:ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: mostPopular.length,
          separatorBuilder: (context, index) => const SizedBox(),
          itemBuilder: (context, index) => CardVerticalPopular(mostPopularMenu: mostPopular[index]),
        ),
        
        // bottomNavigationBar: const BottomNavigatorWidget(),
      ),
    );
  }
}