
part of 'application.dart';

Widget buildApp({required AppFlavor flavor, required GoRouter router}) {
  switch (flavor) {
    case AppFlavor.debug:
      return _debugApp(router);
    case AppFlavor.prod:
      return _prodApp(router);
  }
}

Widget _debugApp(GoRouter router) {
  return MultiBlocProvider(
    providers: [
      BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
      BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
      BlocProvider<TasksPageBloc>(create: (_) => getIt<TasksPageBloc>()),
    ],
    child: MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: true,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
    ),
  );
}

Widget _prodApp(GoRouter router) {
  return MultiBlocProvider(
    providers: [
      BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
      BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
      BlocProvider<TasksPageBloc>(create: (_) => getIt<TasksPageBloc>()),
    ],
    child: MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
    ),
  );
}
