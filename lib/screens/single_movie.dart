import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_again/constants/color.dart';
import 'package:flutter_again/model/movies.dart';
import 'package:provider/provider.dart';

import '../provider/movies.dart';

class Single_Movie extends StatefulWidget {
  static String routeName = '/single';
  @override
  State<Single_Movie> createState() => Single_Movie_State();
}

class Single_Movie_State extends State<Single_Movie> {
  @override
  Widget build(BuildContext context) {
    Widget buildContainer(Widget childWidget) {
      return Container(
        width: 300,
        height: 270,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2.0,
            color: Colors.white,
            style: BorderStyle.solid,
          ),
        ),
        child: childWidget,
      );
    }

    Widget imageSlider(var img) {
      return Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(img),
          ),
        ),
      );
    }

    Widget customListTile(String title, String subtitle) {
      return Card(
        elevation: 5,
        color: amberVariant,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.play_circle),
                  SizedBox(width: 5),
                  Flexible(child: Text(title)),
                ],
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 129, 128, 128),
                ),
              )
            ],
          ),
        ),
      );

      // ListTile(
      //   contentPadding: EdgeInsets.all(5),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10),
      //   ),
      //   leading: Icon(Icons.play_circle),
      //   tileColor: amberVariant,
      //   title: Text(title),
      //   subtitle: Text(subtitle),
      // );
    }

    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    var id = data["id"] as String;

    Movie_Data movie = Provider.of<Movies>(context).findById(id);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
      ),
      home: DefaultTextStyle(
        style: const TextStyle(fontFamily: 'Montserrat'),
        child: Scaffold(
          backgroundColor: Colors.black,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    Provider.of<Movies>(
                      context,
                      listen: false,
                    ).toggleMovieToFav(
                      movie.id,
                    );
                  });
                },
                icon: Icon(
                  Provider.of<Movies>(
                    context,
                    listen: false,
                  ).isItemOnFav(
                    movie.id,
                  )
                      ? Icons.star_outlined
                      : Icons.star_border,
                  color: amberVariant,
                  // size: 16,
                ),
              ),
            ],
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: amberVariant,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
            ),
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                    ),
                    boxShadow: const [
                      BoxShadow(color: amberVariant, spreadRadius: 5)
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(movie.images[0]),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        alignment: Alignment.bottomRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              movie.title,
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(movie.genre),
                            Text(movie.released),
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text(movie.runtime),
                                const Icon(Icons.alarm, size: 15),
                              ],
                            )
                          ],
                        ),
                      ),
                      buildContainer(
                        ListView(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          children: [
                            customListTile(movie.actors, 'Actors'),
                            const SizedBox(height: 5),
                            customListTile(movie.writer, 'Writer'),
                            const SizedBox(height: 5),
                            customListTile(movie.director, 'Director'),
                            const SizedBox(height: 5),
                            customListTile(movie.country, 'Country'),
                            const SizedBox(height: 5),
                            customListTile(movie.awards, 'Awards'),
                            const SizedBox(height: 5),
                            customListTile(movie.rated, 'Rated'),
                            const SizedBox(height: 5),
                            customListTile(movie.imdbID, 'imdbID'),
                            const SizedBox(height: 5),
                            customListTile(movie.imdbRating, 'imdbRatings'),
                            const SizedBox(height: 5),
                            customListTile(movie.imdbVotes, 'imdbVotes'),
                            const SizedBox(height: 5),
                            customListTile(movie.language, 'Language'),
                            const SizedBox(height: 5),
                            customListTile(movie.metascore, 'Metascore'),
                            const SizedBox(height: 5),
                            customListTile(movie.plot, 'Plot'),
                            const SizedBox(height: 5),
                            customListTile(movie.type, 'Type'),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'SpotLists',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Best moments captured by cameras',
                            ),
                            CarouselSlider(
                              items: movie.images
                                  .map((index) => imageSlider(index))
                                  .toList(),
                              options: CarouselOptions(
                                enlargeStrategy:
                                    CenterPageEnlargeStrategy.scale,
                                autoPlay: true,
                                height: 200,
                                enlargeCenterPage: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
