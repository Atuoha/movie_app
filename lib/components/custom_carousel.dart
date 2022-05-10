import 'package:flutter/material.dart';

import '../constants/color.dart';

// ignore: use_key_in_widget_constructors
class CustomCarousel extends StatelessWidget {
  final String image;
  final String title;
  final String genre;
  final String time;
  // ignore: use_key_in_widget_constructors
  const CustomCarousel({
    required this.image,
    required this.title,
    required this.genre,
    required this.time,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        // height:300,
        decoration: BoxDecoration(
          color: amberVariant,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Card(
              elevation: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  image,
                  height: 360,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              // top: 280,
              left: 30,
              right: 30,
              bottom: 10,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      genre,
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 10,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      alignment: Alignment.bottomRight,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Icon(
                            Icons.alarm,
                            size: 12,
                          ),
                          Text(
                            time,
                            style: const TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
