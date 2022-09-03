import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paint_home/core/widgets/wrap_scaffold_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const WrapScaffoldWidget(
          child: Scaffold(
        body: Center(
          child: Text('Home page'),
        ),
      ));
}
