import 'package:flutter/material.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/widgets/description_paint_widget.dart';
import 'package:paint_home/core/widgets/wrap_scaffold_widget.dart';

import '../../../../core/widgets/card_show_paint_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => WrapScaffoldWidget(
        child: Scaffold(
          body: Container(
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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardShowPaintWidget(
                    namePaint: 'Teste',
                    image:
                        'https://img.freepik.com/fotos-gratis/imagem-aproximada-em-tons-de-cinza-de-uma-aguia-careca-americana-em-um-fundo-escuro_181624-31795.jpg?w=2000',
                    onPressedLeft: () {},
                    onPressedRight: () {},
                  ),
                  const SizedBox(height: 10),
                  const DescriptionPaintWidget(
                    brushText: 'Fácil de pintar',
                    airText: 'Não deixa cheiro',
                    bucketText: 'É só abrir, mexer e pintar',
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
