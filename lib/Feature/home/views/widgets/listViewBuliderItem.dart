import 'package:flutter/material.dart';
import 'package:shoes/Feature/home/views/widgets/itemInHome.dart';
import 'package:shoes/core/routing/routes.dart';

class ListViewBuliderItem extends StatelessWidget {
  const ListViewBuliderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, details);
            },
            child: const ItemInHome());
        },
      ),
    );
  }
}
