
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import '../../data/model/food_model.dart';
import 'food_home.dart';

class HomeBody extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
          children: [
      ClipRRect(
      borderRadius: BorderRadius.circular(18),

  child: Image.asset(AppImages.frame,
    width:double.infinity,
    height: size.height*0.22,
    fit: BoxFit.cover,
    )),
            Expanded(child:
                GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 3,mainAxisSpacing: 10),
                  itemCount: foods.length,
                  itemBuilder: (context,index){
                  return FoodHome(
                    index:index
                  );


                    }





                )


















            )]


    ));







}
}
