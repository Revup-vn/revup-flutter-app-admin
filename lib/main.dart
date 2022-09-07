import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:revup_core/core.dart';

import 'configs/firebase_options.dart';
import 'router/auth_router.dart';
import 'router/router.dart';

void main(List<String> args) {
  bootstrapLite(
    builder: (ctx, themeMode) => (theme, dTheme, _) {
      final _appRouter =
          AppRouter(authGuard: AuthGuard(ctx.read(), ctx.read()));

      return MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
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
