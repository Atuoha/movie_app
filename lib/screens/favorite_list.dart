import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/gridview.dart';
import '../provider/movies.dart';

class MovieFavoriteView extends StatefulWidget {
  const MovieFavoriteView({Key? key}) : super(key: key);

  @override
  State<MovieFavoriteView> createState() => _MovieFavoriteViewState();
}

class _MovieFavoriteViewState extends State<MovieFavoriteView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Provider.of<Movies>(context).favoriteMovies.isEmpty
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/img/ss.png',
                      ),
                      radius: 100,
                    ),
                  ),
                  SizedBox(height:5),
                  Text(
                    'Your Favorite list is empty!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          : Movie_GridView(
              movieList: Provider.of<Movies>(context).favoriteMovies,
            ),
    );
  }
}
