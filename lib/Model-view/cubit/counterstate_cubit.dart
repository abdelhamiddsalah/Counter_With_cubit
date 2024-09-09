import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counterstate_state.dart';

class CounterstateCubit extends Cubit<CounterstateState> {
  CounterstateCubit() : super(CounterstateincreA());
  int x =0;
  int y =0;
  void functionIncre({required String team,required int butincrement}){
 if (team == 'A') {
   x += butincrement;
 emit(CounterstateincreA());
 }else{
  y += butincrement;
 emit(CounterstateincreB());
 }
  }
}
