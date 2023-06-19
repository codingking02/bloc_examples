import 'package:bloc/bloc.dart';
import 'package:bloc_examples/user/data/user_model.dart';

class UserCubit extends Cubit<UserModel> {
  UserCubit() : super(UserModel(email: "", name: ""));

  void updateUserName(String value) {
    var user = UserModel(name: value, email: state.email);
    emit(user);
  }

  void updateEmail(String value) {
    var user = UserModel(name: state.name, email: value);
    emit(user);
  }
}
