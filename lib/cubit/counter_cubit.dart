import 'package:basketball/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<GeneralCounterState> {
  CounterCubit(super.initialState);
  int teamAPoints = 0;

  int teamBPoints = 0;

  void increment({required String teamChar, required int buttonNumber}) {
    if (teamChar == 'A') {
      teamAPoints += buttonNumber;
      emit(ACounterIncrementStat());
    } else {
      teamBPoints += buttonNumber;
      emit(BCounterIncrementStat());
    }

    // void teamBIncrement({required int buttonNumber}) {
    //   teamBPoints += buttonNumber;
    //   emit(BCounterIncrementStat());
    // }
  }
}
/*
input: Function
                Cubit
output State
*/
