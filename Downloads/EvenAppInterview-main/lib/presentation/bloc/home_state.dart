part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class HomeLoading extends HomeState {}
class HomeLoaded extends HomeState {
  List<int> homeItems;

  HomeLoaded({required this.homeItems});
}
class HomeError extends HomeState {}
