import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'checking_state.dart';

class CheckingCubit extends Cubit<CheckingState> {
  CheckingCubit() : super(CheckingInitial());
}
