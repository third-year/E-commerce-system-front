
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/home_lyout/cubite/states.dart';

import '../../apiCall/apiCall.dart';
import '../../econo_app/home_model.dart';
import '../../econo_project/bought/bought.dart';
import '../../econo_project/favorite/favorite.dart';
import '../../econo_project/prodact/prodact.dart';
import '../../econo_project/purchases/purchases.dart';
import '../../ui/model/end_points.dart';

class EconoCubite extends Cubit<EconoStates> {
  EconoCubite() : super(EconoInitialState());

  static EconoCubite get(context) => BlocProvider.of(context);
  int curentindex = 0;
  int index = 0;
  List<Widget> screen = [
    ProdactScreen(),
    BoughtScreen(),
    PurchasesScreen(),
    FavoriteScreen(),
  ];
  List<String>categories = [
    'Furniture',
    'Accessories',
    'Food',
    'Clothes',
    'Shoes',
    'Books',
    'Gifts',
    'Technology',
  ];

  void changBottom(int index) {
    curentindex = index;
    emit(EconoChangeButtomNavState());
  }


  HomeModel ? homemodel;

  HomeModel ? home1;

  void gethomedata() {
    emit(EconoLodingHome());
    DioHelper.getDataFromApi(
      url: HOME,
      //token: 'bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0NjkwYjU2NzQ3MGY0ZDUzYjlkYmRhMCIsImlhdCI6MTY4NDc3Mzc4MCwiZXhwIjoxNjg1Mzc4NTgwfQ.JELaURSlaKgzFl82jyydPiUwp8IJVW6p6oIPh1Ad0Gg'
    )
        .then((value) {
      homemodel = HomeModel.fromjson(value.data);
      print(homemodel.toString());
      emit(EconoSuccessHome());
    }).catchError((error) {
      print(error.toString());
      emit(EconoErrorHome());
    });
  }

  void getcate(String catname) {
    emit(EconoLodingCategories());
      DioHelper.getDataFromApi(url: HOME)
          .then((value) =>
      {if (homemodel!.data!.products!.docs[index]!.categories == catname) {
        home1!.data!.products!.docs[index]= HomeModel
          .fromjson(value.data)
          .data!
          .products!
          .docs[index],
        homemodel = home1}})
          .catchError((error) {
        print(error.toString());
        emit(EconoErrorHome());
      });
      emit(EconoSuccessHome());
    }
}
