import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gymapp/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:gymapp/sidebar/sidebar.dart';
import '../pages/myaccountspage.dart';
import '../pages/myorderspage.dart';
import '../pages/homepage.dart';


class SideBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(NavigationEvents.HomePageClickedEvent as NavigationStates), // Proporciona el evento inicial aquí
        child: Stack(
          children: <Widget>[
            BlocBuilder<NavigationBloc, NavigationStates>(
              builder: (context, navigationState) {
                // Mapea cada estado a un widget correspondiente
                Widget? currentPage;

                if (navigationState is MyAccountsPageState) {
                  currentPage = const MyAccountsPage(); // Usa tu widget MyAccountsPage
                } else if (navigationState is MyOrdersPageState) {
                  currentPage = MyOrdersPage(); // Usa tu widget MyOrdersPage
                } else {
                  currentPage = const HomePage(); // Usa tu widget HomePage como predeterminado
                }

                return currentPage;
              },
            ),
            SideBar(),
          ],
        ),
      ),
    );
  }
}
