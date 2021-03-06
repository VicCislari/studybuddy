import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'sidebar.dart';

void main() {
  //Data data=Data(number:2345);
  //Data.number=124;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Data.getNumber();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.white
      ),
      home: AppLayout(),
      /*Scaffold(//AppLayout
        body: BlocProvider<NavigationBloc>(
          create: (context) => NavigationBloc(),
          child: Stack(
            children: <Widget>[
              BlocBuilder<NavigationBloc, NavigationStates>(
                builder: (context, navigationState) {
                  return navigationState as Widget;
                },
              ),
              SideBar(),// has to come after the BlocBuilder because otherwise the blocBuilders Text overlaps with the open Sidebar. Don't why, just tested it.
            ],
          ),
        ),
      ),//AppLayout
    */
    );
  }
}

class AppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(),
        child: Stack(
          children: <Widget>[
            BlocBuilder<NavigationBloc, NavigationStates>(
              builder: (context, navigationState) {
                return navigationState as Widget;
              },
            ),
            SideBar(),// has to come after the BlocBuilder because otherwise the blocBuilders Text overlaps with the open Sidebar. Don't why, just tested it.
          ],
        ),
      ),
    );
  }
}

