import 'package:flutter/material.dart';
import 'package:shoes/Feature/home/views/widgets/details_view_body.dart';
import 'package:shoes/core/models/shoes.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.shoes});
  final Shoes shoes;
  @override
  Widget build(BuildContext context) {
    return  DetailsViewBody(shoes: shoes,);
  }
}
