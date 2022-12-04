import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constans/colors.dart';
import '../../../../utils/helpers/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        height: 48,
        margin: const EdgeInsets.symmetric(horizontal: 35),
        padding: const EdgeInsets.only(right: 10),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/play_arrow.svg'),
              const SizedBox(width: 8),
              Text('Watch Now', style: Styles.kMovieWatch),
            ],
          ),
        ),
      ),
    );
  }
}
