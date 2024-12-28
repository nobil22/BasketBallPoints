import 'package:bloc/bloc.dart';

part 'counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CounterCubitInitial());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void CounterTeam(String team,int buttonNumber){
if(team=='A'){
  teamAPoints+=buttonNumber;
  emit(CounterAState());

}else{
  teamBPoints+=buttonNumber;
  emit( CounterBState());
}
  }
  void Reset() {
teamAPoints=0;
teamBPoints=0;
emit(CounterCubitInitial());
  }
}
