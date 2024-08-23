// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:petprofile_fe/presentation/detail/detail_page.dart'
    as _i1;
import 'package:petprofile_fe/presentation/home/home_page.dart' as _i2;

/// generated route for
/// [_i1.DetailPage]
class DetailRoute extends _i3.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    _i4.Key? key,
    required String owner,
    required String repo,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            key: key,
            owner: owner,
            repo: repo,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailRouteArgs>();
      return _i1.DetailPage(
        key: args.key,
        owner: args.owner,
        repo: args.repo,
      );
    },
  );
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.owner,
    required this.repo,
  });

  final _i4.Key? key;

  final String owner;

  final String repo;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, owner: $owner, repo: $repo}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}
