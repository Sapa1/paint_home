import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/widgets/body_page_scroll_widget.dart';
import 'package:paint_home/core/widgets/wrap_scaffold_widget.dart';
import 'package:paint_home/modules/home/presentation/bloc/home/home_event.dart';

import '../bloc/home/home_bloc.dart';
import '../bloc/home/home_state.dart';
import '../widget/home_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeBloc _homeBloc;

  @override
  void initState() {
    super.initState();

    _homeBloc = Modular.get<HomeBloc>();

    _homeBloc.add(DoGetPaintEvent());
  }

  @override
  Widget build(BuildContext context) => WrapScaffoldWidget(
        child: Scaffold(
          body: BodyPageScrollWidget(
            includeSafeArea: true,
            child: BlocBuilder<HomeBloc, HomeState>(
              bloc: _homeBloc,
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  success: (response) => Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.white19Opacity,
                          AppColors.purpleBackground19Opacity,
                        ],
                      ),
                    ),
                    child: HomeSection(
                      listPaintEntity: response.listPaintEntity,
                      onPageChanged: (value) {
                        _homeBloc.changePage(value + 1);
                        _homeBloc.add(DoGetPaintEvent());
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      );
}
