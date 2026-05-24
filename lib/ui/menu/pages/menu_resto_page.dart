import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos/ui/menu/bloc/get_menu_resto/get_menu_resto_bloc.dart';

class MenuRestoPage extends StatefulWidget {
  const MenuRestoPage({super.key});

  @override
  State<MenuRestoPage> createState() => _MenuRestoPageState();
}

class _MenuRestoPageState extends State<MenuRestoPage> {
  late GetMenuRestoBloc getMenuRestoBloc;

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getMenuRestoBloc.add(MenuRestoFetched());
    return Scaffold( appBar: AppBar(title: Text('Menu Resto')));
  }
  }