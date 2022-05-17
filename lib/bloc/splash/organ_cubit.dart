
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project/bloc/splash/organ_state..dart';
import 'package:new_project/service/service.dart';

class HomeCubit extends Cubit<UsersState> {
  HomeCubit() : super(UsersInitial());

  int indexCount = 0;
  List apis = [
    "dasturlashes",
    "dizayns",
    "smms",
    "tils"
  ];
  void addCount(index){
    indexCount = index;
    MyApi.apiall = apis[index];
    emit(UsersInitial());
  }
}