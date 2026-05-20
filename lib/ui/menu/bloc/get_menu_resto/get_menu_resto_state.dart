part of 'get_menu_resto_bloc.dart';

@immutable
sealed class GetMenuRestoState {}

final class GetMenuRestoInitial extends GetMenuRestoState {}

final class GetMenuRestoLoading extends GetMenuRestoState {}

final class GetMenuRestoLoaded extends GetMenuRestoState {
  final List<MenuRestoModel> list;

  GetMenuRestoLoaded({required this.list});
}

final class GetMenuRestoError extends GetMenuRestoState {
  final String message;

  GetMenuRestoError({required this.message});
}



