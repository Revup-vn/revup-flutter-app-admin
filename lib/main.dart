import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:revup_core/core.dart';

import 'configs/firebase_options.dart';
import 'router/auth_router.dart';
import 'router/router.dart';

void main(List<String> args) {
  bootstrapLite(
    builder: (ctx, themeMode) => (theme, dTheme, defaultRouterObserver, __) {
      final _appRouter =
          AppRouter(authGuard: AuthGuard(ctx.read(), ctx.read()));

      return MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: AutoRouterDelegate(
          _appRouter,
          navigatorObservers: () => [defaultRouterObserver],
        ),
        theme: theme,
        darkTheme: dTheme,
        themeMode: themeMode,
        locale: const Locale('en'),
        localizationsDelegates: const [
          FormBuilderLocalizations.delegate,
          DefaultMaterialLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],
        builder: (_, w) => FlashThemeProvider(
          child: w,
        ),
      );
    },
    fOptions: DefaultFirebaseOptions.currentPlatform,
  );
}
