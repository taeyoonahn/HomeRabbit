import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:home_rabbit/presentation/view_model/navigation_view_model.dart';
import 'package:home_rabbit/presentation/widget/navigation_bar/main_navigation_bar.dart';
import 'package:home_rabbit/presentation/view/discrimination_result_detail_view.dart';
import 'package:home_rabbit/presentation/view/discrimination_result_view.dart';
import 'package:home_rabbit/presentation/view/first_input_view.dart';
import 'package:home_rabbit/presentation/view/home_view.dart';
import 'package:home_rabbit/presentation/view/second_input_view.dart';
import 'package:home_rabbit/presentation/view/splash_view.dart';
import 'package:home_rabbit/presentation/view/system_info_view.dart';
import 'package:home_rabbit/presentation/view/third_input_view.dart';
import 'package:home_rabbit/presentation/view/user_info_view.dart';

class RouterViewModel extends ChangeNotifier {
  final GoRouter _goRouter = GoRouter(
    initialLocation: '/splash',
    routes: <RouteBase>[
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashView(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell){
          return ChangeNotifierProvider(
            create: (_) => NavigationViewModel(navigationShell: navigationShell),
            child: MainNavigationBar(navigationShell: navigationShell,),
          );
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/home',
                builder: (context, state) => const HomeView(),
                routes: <RouteBase>[
                  GoRoute(
                    path: 'firstInput',
                    builder: (context, state) => const FirstInputView(),
                    routes: <RouteBase>[
                      GoRoute(
                        path: 'systemInfo',
                        builder: (context, state) => const SystemInfoView(),
                      ),
                      GoRoute(
                        path: 'secondInput',
                        builder: (context, state) => const SecondInputView(),
                        routes: <RouteBase>[
                          GoRoute(
                            path: 'systemInfo',
                            builder: (context, state) => const SystemInfoView(),
                          ),
                          GoRoute(
                            path: 'thirdInput',
                            builder: (context, state) => const ThirdInputView(),
                            routes: <RouteBase>[
                              GoRoute(
                                path: 'systemInfo',
                                builder: (context, state) => const SystemInfoView(),
                              ),
                              GoRoute(
                                  path: 'discriminationResult',
                                  builder: (context, state) => const DiscriminationResultView(),
                                  routes: <RouteBase>[
                                    GoRoute(
                                      path: 'firstInput',
                                      builder: (context, state) => const FirstInputView(),
                                    ),
                                    GoRoute(
                                      path: 'discriminationResultDetail',
                                      builder: (context, state) => const DiscriminationResultDetailView(),
                                    ),
                                  ]
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'discriminationResult',
                    builder: (context, state) => const DiscriminationResultView(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/userInfo',
                builder: (context, state) => const UserInfoView(),
                routes: <RouteBase>[
                  GoRoute(
                    path: 'systemInfo',
                    builder: (context, state) => const SystemInfoView(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  GoRouter get goRouter => _goRouter;
}
