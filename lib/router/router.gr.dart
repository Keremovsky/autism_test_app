// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CreateTestViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateTestView(),
      );
    },
    HomeViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    QuestionViewRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionViewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: QuestionView(
          key: args.key,
          pageNumber: args.pageNumber,
        ),
      );
    },
  };
}

/// generated route for
/// [CreateTestView]
class CreateTestViewRoute extends PageRouteInfo<void> {
  const CreateTestViewRoute({List<PageRouteInfo>? children})
      : super(
          CreateTestViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateTestViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeView]
class HomeViewRoute extends PageRouteInfo<void> {
  const HomeViewRoute({List<PageRouteInfo>? children})
      : super(
          HomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QuestionView]
class QuestionViewRoute extends PageRouteInfo<QuestionViewRouteArgs> {
  QuestionViewRoute({
    Key? key,
    required int pageNumber,
    List<PageRouteInfo>? children,
  }) : super(
          QuestionViewRoute.name,
          args: QuestionViewRouteArgs(
            key: key,
            pageNumber: pageNumber,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionViewRoute';

  static const PageInfo<QuestionViewRouteArgs> page =
      PageInfo<QuestionViewRouteArgs>(name);
}

class QuestionViewRouteArgs {
  const QuestionViewRouteArgs({
    this.key,
    required this.pageNumber,
  });

  final Key? key;

  final int pageNumber;

  @override
  String toString() {
    return 'QuestionViewRouteArgs{key: $key, pageNumber: $pageNumber}';
  }
}
