import 'package:flutter/material.dart';
import '../../../../utils/services.dart';

import 'search_bar.dart';
import 'search_list.dart';

import '../../../../core/constans/colors.dart';

class SearchScreen extends StatefulWidget {
  final String query;

  const SearchScreen({Key? key, required this.query}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    futureSearchMovie = fetchSearchMovie(widget.query);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SearchBar(),
            SearchList(futureSearchMovie: futureSearchMovie),
          ],
        ),
      ),
    );
  }
}
