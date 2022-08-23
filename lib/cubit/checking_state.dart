// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'checking_cubit.dart';

class CheckingState extends Equatable {

  String checkin;
  String checkout;
  String workinghours;

  CheckingState({
   
    required this.checkin,
  required this.checkout,
  required this.workinghours,
  }
  );

factory CheckingState.initial() => CheckingState(
   checkin: '..:..',
   checkout: '..:..',
   workinghours: '..:..',
  );

  @override
  List<Object> get props => [
    checkin,
   checkout,
   workinghours,
  ];

  CheckingState copyWith({
    String? checkin,
    String? checkout,
    String? workinghours,
  }) {
    return CheckingState(
      checkin: checkin ?? this.checkin,
      checkout: checkout ?? this.checkout,
      workinghours: workinghours ?? this.workinghours,
    );
  }
}

