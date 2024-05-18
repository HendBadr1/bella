import 'package:bella/featuers/home/views/widgets/home_body.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_images.dart';
import '../../favorite/views/favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;

  List<Widget> favorits=[
   HomeBody(),
    FavoriteScreen(),





  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: AppColors.scaffoldcolor,
      appBar: AppBar(backgroundColor: AppColors.scaffoldcolor,
        centerTitle: true,
        title: Image.asset(AppImages.logo,
          height: MediaQuery.of(context).size.height*0.07,


        ),
      ),
      body: favorits[currentIndex],


      drawer: Drawer(
        child: ListView(
          // Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(


              decoration: BoxDecoration(
             color: Colors.white,
              ),
              child:

                  Column(
                    children:  [


                      Icon(Icons.fastfood,size: 30,),
                      Text("Billa",style: TextStyle(color: AppColors.orange,fontSize: 35),)
                  

                   




                    ],


                  )


            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (bottomIndex){


          setState(() {
            currentIndex=bottomIndex;

          });

        },
        currentIndex: currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
              label: "favorite"
          ),

        ],

      ),


    );


  }
}
