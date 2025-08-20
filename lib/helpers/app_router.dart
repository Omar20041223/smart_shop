import 'package:go_router/go_router.dart';
import 'package:shop_smart/helpers/routes.dart';
import 'package:shop_smart/models/cart_model.dart';
import 'package:shop_smart/views/desc_view.dart';
import 'package:shop_smart/views/login_view.dart';

import '../views/wrapper_view.dart';

abstract class AppRouter {
static final router =GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: Routes.loginView,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: Routes.wrapperView,
      builder: (context, state) => const WrapperView(),
    ),
    GoRoute(
      path: Routes.descView,
      builder: (context, state) {
        final product = state.extra as CartModel;
        return DescView(product: product,);
      },
    ),
  ],
);
}