import 'package:browser/routes/index.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [GoRoute(path: "/", builder: (_, _) => const Index())],
);
