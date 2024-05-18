
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../data/model/food_model.dart';

class FoodHome extends StatefulWidget {
  const FoodHome({super.key,required this.index});
  final int index;





  @override
  State<FoodHome> createState() => _FoodHomeState();
}

class _FoodHomeState extends State<FoodHome> {



  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13)
          ),


          child:


          Column(

            children: [
              Image.asset(foods[widget.index].image,
                height: 96,
                width: 96,

              ),
              Text(foods[widget.index].title,),
              SizedBox(height: 8,),
              Text("${foods[widget.index].price}\$",
                style: TextStyle(color: AppColors.orange,fontWeight: FontWeight.bold,),
              ),
              SizedBox(height: 8,),


            ],

          ),

        ),
        Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10,
            ),
          child: GestureDetector(
            onTap: (){
              setState(() {
                foods[widget.index].fav = !foods[widget.index].fav;
              });
            },
            child: CircleAvatar(
              backgroundColor: AppColors.orange.withOpacity(0.2),
              child: Icon(
                foods[widget.index].fav==true?
                    Icons.favorite
                    :
                    Icons.favorite_border,
                color:AppColors.orange,
              ),
            ),
          ),
        )
      ],
    );
  }
}
