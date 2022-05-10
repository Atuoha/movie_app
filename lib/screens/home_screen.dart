import 'package:flutter/material.dart';

import '../components/avatar_imageries.dart';
import '../components/carousel_slider.dart';
import '../constants/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hello Buddy 👋',
          style: TextStyle(fontSize: 20),
        ),
        const Text(
          'View your favorite movies',
          style: TextStyle(
            color: Color.fromARGB(255, 193, 191, 191),
          ),
        ),
        const SizedBox(height: 10),
        const CustomCarouselSlider(),
        const SizedBox(height: 7),
        const Text(
          'A place for all you could ever imagina and...',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Take a glance and thank me later',
          style: TextStyle(
              color: amberVariant,
              // fontStyle: FontStyle.italic,
              fontSize: 10),
        ),
        const SizedBox(height: 5),
        const Expanded(flex: 4, child: AvatarImagery()),
        const SizedBox(height: 3),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Better views on a screen!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: null,
                child: const Text(
                  'view all movie listings',
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
