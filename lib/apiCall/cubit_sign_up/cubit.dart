import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/apiCall/apiCall.dart';
import 'package:shopping/apiCall/cubit_sign_up/states.dart';
import 'package:shopping/ui/model/model_signup/models_sinup.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());
  static SignUpCubit get(context) => BlocProvider.of(context);

  late SignUpModel signup;
  void postData({
    required String firstname,
    required String endtname,
    required String email,
    String? image,
    required int phone,
    required String password,
    required String confPassword,
  }) {
    emit(SignUpLodingState());
    DioHelper.postData(
        url: 'http://192.168.1.5:3000/api/v1/user/signup',
        data: {
          "firstName": firstname,
          "lastName": endtname,
          "email": email,
          "password": password,
          "passwordConfirm": confPassword,
          "image": image,
          "phone": phone,
        }).then((value) async {
      print(value.statusCode);
      signup = SignUpModel.fromjson(value.data);
      print(signup);
      emit(Successtate(signup));
    }).catchError((error) {
      if (error is DioError) {
        print(error.response);
      }
      emit(SignUpErrorState(error.toString()));

      //print(error.toString());
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool ispassword = true;
  void changpassword() {
    ispassword = !ispassword;
    suffix =
        ispassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ShopChangePassword());
  }
}
