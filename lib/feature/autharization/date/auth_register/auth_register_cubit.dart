import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_x/feature/autharization/date/auth_register/auth_register_state.dart';

class AppRegisterCubit extends Cubit<AppRegisterState> {
  AppRegisterCubit() : super(AppInitialState());

  Future<void> userRegister(
      {required String email, required String password}) async {
    emit(AppRegisterLoadedState());
    try {
      // ignore: unused_local_variable
      UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emailVerify();
      emit(AppRegisterSuccessState());
    } catch (e) {
      emit(AppRegisterErrorState());
    }
  }

  Future<void> emailVerify() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }
}
