import 'package:flutter/material.dart';
import 'package:flutter_again/components/single_movie_grid.dart';

import '../screens/single_movie.dart';

// ignore: camel_case_types
class Movie_GridView extends StatelessWidget {
  final List movieList;
  Movie_GridView({required this.movieList});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // padding: const EdgeInsets.all(10),
      crossAxisCount: 2,
      children: movieList.map((product) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              Single_Movie.routeName,
              arguments: {'id': product.id},
            );
          },
          child: Single_Movie_Grid(
            title: product.title,
            imgSrc: product.images[0],
            id: product.id,
          ),
        );
      }).toList(),
    );
  }
}
