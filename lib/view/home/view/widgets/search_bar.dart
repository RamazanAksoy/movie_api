import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'search.dart';

import '../../../../core/constans/colors.dart';
import '../../../../utils/helpers/text_styles.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(35, 37, 35, 40),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
      decoration: BoxDecoration(
        color: AppColors.kTextColor.withOpacity(0.1),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: TextField(
        controller: _searchController,
        style: Styles.kSearchHint.apply(color: AppColors.kTextColor),
        decoration: InputDecoration(
          icon: SvgPicture.asset('assets/icons/search.svg'),
          hintText: query.isEmpty ? 'Search Movies' : query,
          hintStyle: Styles.kSearchHint,
          border: InputBorder.none,
        ),
        onSubmitted: (value) {
          setState(() {
            query = value;
          });
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SearchScreen(query: value),
            ),
          );
        },
      ),
    );
  }
}
