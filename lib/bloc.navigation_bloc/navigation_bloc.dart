import 'package:bloc/bloc.dart';
import '../pages/myaccountspage.dart';
import '../pages/myorderspage.dart';
import '../pages/homepage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
}

abstract class NavigationStates {}

class MyAccountsPageState extends NavigationStates {} // Define a state for MyAccountsPage
class MyOrdersPageState extends NavigationStates {} // Define a state for MyOrdersPage
class HomePageState extends NavigationStates {} // Define a state for HomePage

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(super.initialState);


  @override
  NavigationStates get initialState => HomePageState(); // Set initial state to represent the home page

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePageState(); // Emit a state representing the home page
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountsPageState();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield MyOrdersPageState();
        break;
    }
  }
}
