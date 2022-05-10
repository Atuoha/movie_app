import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/gridview.dart';
import '../provider/movies.dart';

class MovieGridView extends StatefulWidget {
  const MovieGridView({Key? key}) : super(key: key);

  @override
  State<MovieGridView> createState() => _MovieGridViewState();
}

class _MovieGridViewState extends State<MovieGridView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Movie_GridView(
        movieList: Provider.of<Movies>(context).availableMovies,
      ),
    );
  }
}
