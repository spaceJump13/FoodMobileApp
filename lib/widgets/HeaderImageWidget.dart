import 'package:flutter/material.dart';

class HeaderImageWidget extends StatelessWidget {
  const HeaderImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
        const Image(image: AssetImage('assets/ramen.jpg')),
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [ // Add box shadow here
                BoxShadow(
                  color: Colors.black.withOpacity(0.05), // Adjust shadow color and opacity
                  blurRadius: 5.0, // Adjust blur radius for softness
                  spreadRadius: 9.0, // Adjust spread radius for size
                  offset: const Offset(0.0, 20.0), // Adjust shadow offset
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black.withOpacity(0.28)],
              ),
            ),

            child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(17.0, 12.0, 12.0, 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end, // Align texts and dots at bottom
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Japan Style',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        '12 Places',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(), // Fills remaining space
                  Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 12.0, 12.0, 15.0),
                    child: Row(
                      children: [
                        Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white, // Adjust dot color
                          ),
                        ),
                        const SizedBox(width: 7.0), // Adjust spacing between dots
                        Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white38, // Adjust dot color
                          ),
                        ),
                        const SizedBox(width: 7.0), // Adjust spacing between dots
                        Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white38, // Adjust dot color
                          ),
                        ),
                        const SizedBox(width: 7.0), // Adjust spacing between dots
                        Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white38, // Adjust dot color
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ),
        ),
      ],
    );
  }
}