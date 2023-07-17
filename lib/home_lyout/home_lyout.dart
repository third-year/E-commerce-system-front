
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/ui/style/colors.dart';

import '../drawer/drawer.dart';
import 'cubite/cubite.dart';
import 'cubite/states.dart';

class HomeLyoutScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return BlocConsumer<EconoCubite,EconoStates>(
     listener: (context,state){},
     builder: (context,state){
       var cubit = EconoCubite.get(context);
       return Scaffold (
         appBar: AppBar(
           actions: [
             IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 35.0,),
               color: ColorApp.strongColor,
             ),
           ],
           title: Text('starz'.toUpperCase(),
               style: TextStyle(fontSize: 30.0,
               color: ColorApp.secondBackColor,
               fontWeight: FontWeight.w500)
           ),
           backgroundColor: Colors.white,
           elevation: 0.0,
         ),
         drawer:NavigationDrawer1() ,
         body: cubit.screen[cubit.curentindex],
         bottomNavigationBar:BottomNavigationBar(
           selectedItemColor: ColorApp.strongColor,
           selectedLabelStyle: TextStyle(fontSize: 14),
           unselectedLabelStyle: TextStyle(fontSize: 13),
           backgroundColor: ColorApp.veryverylightColor,
           elevation: 5.5,
           type:BottomNavigationBarType.fixed,
           currentIndex: cubit.curentindex,
           onTap: (index){
             cubit.changBottom(index);
           },
           items: [
             BottomNavigationBarItem(
                 icon:Icon(Icons.grid_view_rounded,),
                 label: 'prodacts'
             ),
             BottomNavigationBarItem(
                 icon:Icon(Icons.sell,),
                 label: 'sales'
             ),
             BottomNavigationBarItem(
                 icon:Icon(Icons.shopping_basket_sharp,),
                 label:'cart'
             ),
             BottomNavigationBarItem(
                 icon:Icon(Icons.favorite,),
                 label: 'favorite'
             )
           ],
         ) ,

       );
     },
   );
  }

}