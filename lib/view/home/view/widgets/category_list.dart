import 'package:flutter/material.dart';
import '../../model/category.dart';
import 'category_item.dart';

import '../../../../utils/helpers/text_styles.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 35, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Category', style: Styles.kSectionTitle),
          const SizedBox(height: 14),
          SizedBox(
            height: size.height / 9,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (context, index) {
                final item = category[index];
                return CategoryItem(
                  size: size,
                  title: item['title'],
                  svgPath: item['svg_url'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
