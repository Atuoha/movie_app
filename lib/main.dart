

// MOVIE APP
import 'package:flutter/material.dart';
import 'package:flutter_again/components/botttom_nav.dart';
import 'package:flutter_again/provider/movies.dart';
import 'package:flutter_again/screens/single_movie.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Movies(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
          ),
        ),
        home: BottomNav(),
        routes: {
          Single_Movie.routeName:(context) => Single_Movie(),
        }
      ),
    );
  }
}
