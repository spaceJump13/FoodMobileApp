import 'package:flutter/material.dart';
import 'package:uts_kevinsadino/widgets/MostPopularCard.dart';

class CardVerticalPopular extends StatelessWidget {
  final MostPopular mostPopularMenu;

  const CardVerticalPopular ({super.key, required this.mostPopularMenu});

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
        child: SizedBox(
          height: 320.0,
          width: double.infinity, 
          child: Column(
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
                    mostPopularMenu.imageUrl,
                    fit: BoxFit.cover,
                  ), 
                )  ,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0, left: 12.0, right: 7.0, bottom: 7.0),
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
                              fontSize: 18.0
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            mostPopularMenu.description,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0
                            ),
                            maxLines: 5, // Limit description lines (optional)
                            overflow: TextOverflow.ellipsis, // Handle overflowing text (optional)
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}