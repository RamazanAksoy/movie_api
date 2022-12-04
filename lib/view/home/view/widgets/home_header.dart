import 'package:flutter/material.dart';

import '../../../../utils/helpers/text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 30, 35, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi, Tustoz', style: Styles.kHeaderTitle),
              const SizedBox(height: 7),
              Text("See What's Next", style: Styles.kHeaderSubtitle),
            ],
          ),
          Image.asset('assets/images/avatar.png', scale: 4),
        ],
      ),
    );
  }
}
