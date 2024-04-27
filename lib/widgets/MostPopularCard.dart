import 'package:flutter/material.dart';

class MostPopular{
  final String imageUrl;
  final String title;
  final String address;
  final String description;

  const MostPopular(
    {
    required this.description,
    required this.imageUrl,
    required this.title,
    required this.address,
    }
  );
}
class MostPopularCard extends StatelessWidget {
  final MostPopular mostPopularMenu;

  const MostPopularCard({super.key, required this.mostPopularMenu});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 15.0, right: 2.0, bottom: 2.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        elevation: 3,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: 200.0,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0),),
                child: AspectRatio(
                  aspectRatio: 16/10, 
                  child: Image.asset(mostPopularMenu.imageUrl, fit: BoxFit.cover)
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
                              mostPopularMenu.title,
                              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10.0), // Add some space between title and desc
                            Text(
                              mostPopularMenu.address,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0
                              ),
                            ),
                            const SizedBox(height: 4.0),
                            Text(
                              mostPopularMenu.description,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0
                              )
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