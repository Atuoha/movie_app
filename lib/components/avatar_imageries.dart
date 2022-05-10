import 'package:flutter/material.dart';

class AvatarImagery extends StatelessWidget {
  const AvatarImagery({Key? key}) : super(key: key);

  Widget customCircleAvatar(String image) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage(image),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        customCircleAvatar('assets/img/netflix.png'),
        const SizedBox(width: 5),
        customCircleAvatar('assets/img/mov1.png'),
        const SizedBox(width: 5),
        customCircleAvatar('assets/img/mov2.png'),
        const SizedBox(width: 5),
        customCircleAvatar('assets/img/mov3.png'),
        const SizedBox(width: 5),
        customCircleAvatar('assets/img/mov4.png'),
        const SizedBox(width: 5),
        customCircleAvatar('assets/img/a.png'),
        const SizedBox(width: 5),
        customCircleAvatar('assets/img/undraw_Appreciation_re_p6rl.png'),
        const SizedBox(width: 5),
        customCircleAvatar('assets/img/undraw_File_bundle_re_6q1e.png'),
        const SizedBox(width: 5),
        customCircleAvatar('assets/img/undraw_Location_search_re_ttoj.png'),
        const SizedBox(width: 5),
        customCircleAvatar('assets/img/undraw_quick_chat_re_bit5.png'),
      ],
    );
  }
}
