part of 'homedata_cubit.dart';

@immutable
sealed class HomedataState {}

final class HomedataInitial extends HomedataState {}
final class HomedataLoading extends HomedataState {}
final class HomedataLoaded extends HomedataState {
  final List<Shoes> shoes;
  HomedataLoaded({required this.shoes});
}
final class HomedataFailure extends HomedataState {
  final String error;

  HomedataFailure({required this.error});
}