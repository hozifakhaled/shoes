import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shoes/core/constants/contextExtension.dart';

class Shimmerintemhome extends StatelessWidget {
  const Shimmerintemhome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
             shrinkWrap: true,
           physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 10),
             itemCount: 4,
             itemBuilder: (BuildContext context, int index) {
               return   Padding(
       padding: const EdgeInsets.symmetric(vertical: 20.0),
       child: Material(
         color: Colors.white,
         borderRadius: BorderRadius.circular(20),
         elevation: 10.0,
         child: Shimmer.fromColors(
           baseColor:  Colors.grey,
           highlightColor:  Colors.white,
           child: ClipRRect(
             borderRadius: BorderRadius.circular(16),
             child: Container(
                         
                            height:  context.height*.4,
                            width:double.infinity,
                           color: Colors.white,
                         
                         
                          ),
           ),
         ),
       ),
               );
         
           
          },
           ),
    );
  }
}

