import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping/cubit/states.dart';

import '../apiCall/apiCall.dart';

class ELoginCubit extends Cubit<ELoginSates> {
  ELoginCubit() : super(LoginInitialState());
  static ELoginCubit get(context) => BlocProvider.of(context);
  void userlogin({required String email, required String password}) {
    emit(LoginLoadingState());
    DioHelper.postData(url: 'http://192.168.1.5:3000/api/v1/user/login', data: {
      'email': email,
      'password': password,
    }).then((value) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', value.data['token']);
      print(prefs.getString('token'));
      emit(LoginSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(LoginErrorState());
    });
  }

  void forgetpaasswordc({
    required String email,
  }) {
    emit(ForgetLoadingState());
    DioHelper.postData(url: '/v1/user/forgotPassword', data: {
      'email': email,
    }).then((value) {
      print(value.data);
      emit(ForgetSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(ForgetErrorState());
    });
  }

  void codepaasswordc({
    required String code,
  }) {
    emit(CodeLoadingState());
    DioHelper.postData(url: '/v1/user/login', data: {
      'code': code,
    }).then((value) {
      print(value.data);
      emit(CodeSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(CodeErrorState());
    });
  }

  void newpaasswordc({required String password, required String conpassword}) {
    emit(NewLoadingState());
    DioHelper.postData(url: '/v1/user/login', data: {}).then((value) {
      print(value.data);
      emit(NewSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(NewErrorState());
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool ispassword = true;
  void changpassword() {
    ispassword = !ispassword;
    suffix =
        ispassword ? Icons.visibility_off_outlined : Icons.visibility_outlined;
    emit(ShopChangePasswordd());
  }
}
