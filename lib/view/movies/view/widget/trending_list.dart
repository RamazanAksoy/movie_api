import 'package:flutter/material.dart';

import '../../../../component/loading.dart';
import '../../../../core/constans/colors.dart';
import '../../../../utils/helpers/text_styles.dart';
import '../../model/movie.dart';
import 'trending_item.dart';

class TrendingList extends StatelessWidget {
  final Future<Movie> futureTrendingMovie;

  const TrendingList({Key? key, required this.futureTrendingMovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            'Trending',
            style: Styles.kSectionMovieTitle,
          ),
        ),
        const SizedBox(height: 24),
        FutureBuilder<Movie>(
          future: futureTrendingMovie,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return TrendingItem(snapshot: snapshot);
            } else if (snapshot.hasError) {
              return Text(
                '${snapshot.error}',
                style: Styles.kSectionMovieSubtitle.apply(
                  color: AppColors.kPrimaryColor,
                ),
              );
            }

            // By default, show a loading spinner.
            return const Loading(
              padding: EdgeInsets.symmetric(horizontal: 143),
            );
          },
        ),
      ],
    );
  }
}
