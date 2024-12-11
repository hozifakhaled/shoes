import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/core/constants/funcation.dart';
import 'package:shoes/core/routing/routes.dart';
import 'package:shoes/main.dart';

class Containergohome extends StatelessWidget {
  const Containergohome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * .7 ,
      height: context.height * .1 ,
     
      decoration: BoxDecoration(
         color: Colors.black,
       borderRadius: BorderRadius.circular(40) 
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
             
            
            height: 40.h ,
            width: 40.h,
                       
            decoration: BoxDecoration(
               color: Colors.white,
             borderRadius: BorderRadius.circular(40) 
            ),
            child:IconButton(onPressed: (){
              Navigator.pushNamed(context, homeView);
            }, icon:  Icon(Icons.arrow_forward)),
            ),
          ],
        ),
      ),
    );
  }
}
