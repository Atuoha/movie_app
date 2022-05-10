import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_again/constants/color.dart';
import 'package:flutter_again/model/movies.dart';
import 'package:provider/provider.dart';

import '../provider/movies.dart';

// ignore: camel_case_types
class Single_Movie_Grid extends StatefulWidget {
  final String title;
  final String imgSrc;
  final String id;
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Single_Movie_Grid(
      {required this.title, required this.imgSrc, required this.id});

  @override
  State<Single_Movie_Grid> createState() => _Single_Movie_GridState();
}

class _Single_Movie_GridState extends State<Single_Movie_Grid> {
  @override
  Widget build(BuildContext context) {




    return Stack(
      children: [
        Container(
          height: 170,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.only(bottom: 25),
          decoration: BoxDecoration(
            color: amberVariant,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Card(
            elevation: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                widget.imgSrc,
                fit: BoxFit.cover,
                height: 120,
                width: double.infinity,
              ),
            ),
          ),
        ),
        Positioned(
          top: 119,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: amberVariant.withOpacity(0.4),
            ),
            child: Row(children: [
              IconButton(
                onPressed: () {
                  setState(() {
                  Provider.of<Movies>(
                    context,
                    listen: false,
                  ).toggleMovieToFav(
                    widget.id,
                  );
                    
                  });
                },
                icon: Icon(
                  Provider.of<Movies>(
                    context,
                    listen: false,
                  ).isItemOnFav(
                    widget.id,
                  )
                      ? Icons.star_outlined
                      : Icons.star_border,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              Text(
                widget.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),

        )
      ],
    );
  }
}
