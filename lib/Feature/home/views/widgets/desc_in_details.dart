import 'package:flutter/material.dart';
import 'package:shoes/core/styles/text_styles.dart';

class DescInDetails extends StatelessWidget {
  const DescInDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 5,
    overflow: TextOverflow.ellipsis,
    '''With design elements inspired by the movement and motion of city life, the Wild Rider Layers Unisex Sneakers brings a fresh new dimension tothe iconic Rider family. We\’ve layered a rich mix of premium leather,suede and hairy suede onto a nylon upper to create texture and a raw edgy look that is pure street. The IMEVA midsole and rubber outsole 
ensure combined lightweight comfort and great traction to take you forward, 
further and faster through your day and beyond.''',style: Styles.descindetails());
  }
}
