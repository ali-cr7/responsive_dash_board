

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'page_index_state.dart';

class PageIndexCubit extends Cubit<int> {
  PageIndexCubit() : super(0);
    void setPageIndex(int index) {
    emit(index);
  }
}
