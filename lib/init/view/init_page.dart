import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'init_view.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) => InitView(auth: context.read());
}
