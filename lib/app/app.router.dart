// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../authentification/presentation/authentification_view.dart';

class Routes {
  static const String authentificationView = '/';
  static const all = <String>{
    authentificationView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.authentificationView, page: AuthentificationView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    AuthentificationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AuthentificationView(),
        settings: data,
      );
    },
  };
}
