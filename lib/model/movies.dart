// ignore: camel_case_types
class Movie_Data {
  String id;
  String title;
  String year;
  String rated;
  String released;
  String runtime;
  String genre;
  String director;
  String writer;
  String actors;
  String plot;
  String language;
  String country;
  String awards;
  String metascore;
  String imdbRating;
  String imdbVotes;
  String imdbID;
  String type;
  List<String> images;
  Movie_Data({
    required this.id,
    required this.title,
    required this.rated,
    required this.year,
    required this.released,
    required this.runtime,
    required this.genre,
    required this.director,
    required this.writer,
    required this.actors,
    required this.plot,
    required this.language,
    required this.country,
    required this.awards,
    required this.metascore,
    required this.imdbRating,
    required this.imdbVotes,
    required this.imdbID,
    required this.type,
    required this.images,
  });
}
