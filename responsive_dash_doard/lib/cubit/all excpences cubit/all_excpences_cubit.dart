import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'all_excpences_state.dart';

class AllExcpencesCubit extends Cubit<AllExcpencesState> {
  AllExcpencesCubit() : super(AllExcpencesInitial(activeIndex: 0));
    void onItemTapped(int index) {
   
    if (state.activeIndex != index) {
      emit(state.copyWith(activeIndex: index));
    }
   
  }
}
