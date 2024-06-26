
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../home/data/model/food_model.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});


  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    List<FoodModel> favList = foods.where((foodModel) => foodModel.fav==true).toList() ;
    return ListView.builder(

      padding: const EdgeInsets.all(5),
        itemCount: favList.length,
        itemBuilder:(context,index){
        return Card(
          child: ListTile(
            title: Text(favList[index].title,style: TextStyle(color:Colors.orange,fontWeight: FontWeight.bold),),
            subtitle: Text("${favList[index].price}\$",style: TextStyle(color: AppColors.orange,fontWeight: FontWeight.bold),),
            leading: Image.asset(favList[index].image),
            trailing: GestureDetector(
              onTap: (){
                setState(() {
                  favList[index].fav=false;
                });
              },
              child: CircleAvatar(
                backgroundColor: AppColors.orange.withOpacity(0.1),
                child: const Icon(Icons.favorite,
                  color: AppColors.orange,
                ),

              ),
            ),
          ),
        );

        }



    );
  }
}
