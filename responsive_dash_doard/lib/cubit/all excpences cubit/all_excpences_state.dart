part of 'all_excpences_cubit.dart';

@immutable
sealed class AllExcpencesState {
  final int activeIndex;

  AllExcpencesState({required this.activeIndex});
  AllExcpencesState copyWith({int? activeIndex}) {
  return AllExcpencesInitial(activeIndex: activeIndex ?? this.activeIndex);
}
}

final class AllExcpencesInitial extends AllExcpencesState {
  AllExcpencesInitial({required int activeIndex}) : super(activeIndex: activeIndex);
  
}
