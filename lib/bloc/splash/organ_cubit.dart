import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project/bloc/splash/organ_state..dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(UsersInitial()) {
    int indexCount = 0;

    List api = [
      "dasturlash",
      "diazayn",
      "smm",
      "tillar",
    ];

    void addCound(index) {
      indexCount = index;
      
    }
  }
}
