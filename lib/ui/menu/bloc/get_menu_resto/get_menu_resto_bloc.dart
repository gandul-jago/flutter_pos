import 'package:bloc/bloc.dart';
import 'package:flutter_pos/data/models/menu_resto_model.dart';
import 'package:flutter_pos/data/repo/menu_resto_repository.dart';
import 'package:meta/meta.dart';

part 'get_menu_resto_event.dart';
part 'get_menu_resto_state.dart';

class GetMenuRestoBloc extends Bloc<GetMenuRestoEvent, GetMenuRestoState> {
  final menuRestoRepository = MenuRestoRepository();
  GetMenuRestoBloc() : super(GetMenuRestoInitial()) {
    on<MenuRestoFetched>((event, emit) async {
      try{
        var response = await menuRestoRepository.getAllMenuResto();
        emit (GetMenuRestoLoaded(list: response ));
      } catch (e) {
        emit (GetMenuRestoError(message: e.toString()));
      }


    });
  }
}
