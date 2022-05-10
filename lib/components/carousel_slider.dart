import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'custom_carousel.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        CustomCarousel(
          image:
              'https://images-na.ssl-images-amazon.com/images/M/MV5BNzM2MDk3MTcyMV5BMl5BanBnXkFtZTcwNjg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg',
          title: 'Avatar',
          genre: 'Action, Adventure, Fantasy',
          time: '162 min',
        ),
        CustomCarousel(
          image:
              'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA3NTEwOTMxMV5BMl5BanBnXkFtZTgwMjMyODgxMzE@._V1_SX1500_CR0,0,1500,999_AL_.jpg',
          title: 'Interstellar',
          genre: 'Adventure, Drama, Sci-Fi',
          time: '169 min',
        ),
        CustomCarousel(
          image:
              'https://images-na.ssl-images-amazon.com/images/M/MV5BMjMzMzIzOTU2M15BMl5BanBnXkFtZTgwODMzMTkyODE@._V1_SY1000_SX1500_AL_.jpg',
          title: 'Vikings',
          genre: 'Action, Drama, History',
          time: '44 min',
        ),
        CustomCarousel(
          image:
              'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyNjkxOTk5NV5BMl5BanBnXkFtZTgwODAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg',
          title: 'Rogue one: A star wars story',
          genre: 'Action, Adventure, Sci-Fi',
          time: 'N/A',
        ),
      ],
      options: CarouselOptions(
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        autoPlay: true,
        height: 400,
        enlargeCenterPage: true,
      ),
    );
  }
}
