import "package:exam_5/core/routing/routes.dart";
import "package:exam_5/features/home_page/manager/home_bloc.dart";
import "package:exam_5/features/home_page/pages/home_page.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";

final GoRouter router = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.home,
      builder:
          (context, state) => BlocProvider(
            child: HomePage(),
            create: (context) => HomeBloc(repo: context.read()),
          ),
    ),
  ],
);
