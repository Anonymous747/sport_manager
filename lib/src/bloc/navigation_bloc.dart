import 'dart:async';

import 'package:sport_manager/src/bloc/navigation_provider.dart';

final bloc = NavigationDrawerBloc();

class NavigationDrawerBloc {
  final navigationController = StreamController();
  NavigationProvider navigationProvider = NavigationProvider();

  Stream get getNavigation => navigationController.stream;

  void updateNavigation(String navigation) {
    navigationProvider.uodateNavigation(navigation);
    navigationController.sink.add(navigationProvider
    .currentNavigation);
  }

  void dispose() {
    navigationController.close();
  }
}