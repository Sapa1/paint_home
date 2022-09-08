import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paint_home/core/const/routes.dart';
import 'package:paint_home/core/styles/text_styles.dart';
import 'package:paint_home/core/widgets/elevated_button_widget.dart';

import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/body_page_scroll_widget.dart';
import '../../../../core/widgets/profile_card_widget.dart';
import '../../../../core/widgets/wrap_scaffold_widget.dart';
import '../bloc/profile/profile_bloc.dart';
import '../bloc/profile/profile_event.dart';
import '../bloc/profile/profile_state.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late final ProfileBloc profileBloc;

  @override
  void initState() {
    super.initState();

    profileBloc = Modular.get<ProfileBloc>();

    profileBloc.add(GetProfileEvent());
  }

  @override
  Widget build(BuildContext context) => WrapScaffoldWidget(
        child: Scaffold(
          body: BodyPageScrollWidget(
            includeSafeArea: true,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<ProfileBloc, ProfileState>(
              bloc: profileBloc,
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  success: (result) => Column(
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'Perfil',
                        style: AppTextStyles.sans26bold.copyWith(
                          color: AppColors.lightBlack,
                        ),
                      ),
                      const SizedBox(height: 23),
                      ProfileCardWidget(
                        image: result.image,
                        name: result.name,
                      ),
                      const SizedBox(height: 23),
                      ElevatedButtonWidget(
                        elevatedButtonType: ElevatedButtonType.white,
                        text: 'Fazer logout',
                        onPressed: () {
                          Modular.to.navigate(AppRoutes.initial);
                        },
                        style: ButtonStyle(
                          maximumSize: MaterialStateProperty.all(const Size(double.infinity, 48)),
                          backgroundColor: MaterialStateProperty.all(AppColors.white),
                          elevation: MaterialStateProperty.all(0),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(
                                color: AppColors.gray2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      );
}
