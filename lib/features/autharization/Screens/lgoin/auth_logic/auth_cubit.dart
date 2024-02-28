import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_x/features/autharization/Screens/lgoin/auth_logic/auth_state.dart';

class AppLoginCubit extends Cubit<AppLoginState> {
  AppLoginCubit() : super(AppLoginInatialState());
}
