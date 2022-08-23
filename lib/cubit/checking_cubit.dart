import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
part 'checking_state.dart';

class CheckingCubit extends Cubit<CheckingState> {
String time = DateFormat('kk:mm').format(DateTime.now());

  CheckingCubit() : super(CheckingState.initial());

   void updateTime() {
    if(state.checkin == "..:..") {
      emit(
        state.copyWith(checkin: time)
       );
    }else{
      emit(
        state.copyWith(
          checkout: time,
          workinghours: time,
        )
       );
    }
  }
}
