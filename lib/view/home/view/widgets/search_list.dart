// ignore_for_file: unnecessary_null_comparison, must_be_immutable

import 'package:flutter/material.dart';

import 'package:netflix_redesign/view/movies/model/movie.dart';
import 'package:netflix_redesign/view/home/view/widgets/search_item.dart';
import 'package:netflix_redesign/component/loading.dart';

import '../../../../core/constans/colors.dart';
import '../../../../utils/helpers/text_styles.dart';

class SearchList extends StatefulWidget {
  late Future<Movie> futureSearchMovie;

  SearchList({
    Key? key,
    required this.futureSearchMovie,
  }) : super(key: key);

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3400,
      color: AppColors.kBackgroundColor,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: FutureBuilder<Movie>(
        future: widget.futureSearchMovie,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Result> snapshots = snapshot.data!.results!;
            return Container(
              height: 3400,
              color: AppColors.kBackgroundColor,
              child: GridView.builder(
                controller: _scrollController,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 300,
                ),
                itemCount: snapshots.length,
                itemBuilder: (context, index) {
                  final data = snapshots[index];
                  return SearchItem(data: data, index: index);
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 250),
                Text('${snapshot.error}', style: Styles.kErrorText),
              ],
            );
          }

          return Scaffold(
            backgroundColor: AppColors.kBackgroundColor,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(height: 250),
                Loading(
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
