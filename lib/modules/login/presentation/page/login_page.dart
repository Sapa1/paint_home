import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paint_home/core/const/images.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/styles/text_styles.dart';
import 'package:paint_home/core/widgets/body_page_scroll_widget.dart';
import 'package:paint_home/core/widgets/wrap_scaffold_widget.dart';

import '../../../../core/const/strings.dart';
import '../../../../core/validators/validators.dart';
import '../../../../core/widgets/elevated_button_widget.dart';
import '../../../../core/widgets/text_form_field_widget.dart';
import '../../../../core/widgets/text_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final GlobalKey<FormState> _formKey;

  late final TextEditingController _controllerEmail;
  late final TextEditingController _controllerPassword;

  late final FocusNode _emailFocus;
  late final FocusNode _passwordFocus;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();

    _controllerEmail = TextEditingController();
    _controllerPassword = TextEditingController();

    _passwordFocus = FocusNode();
    _emailFocus = FocusNode();
  }

  @override
  Widget build(BuildContext context) => WrapScaffoldWidget(
        child: Scaffold(
          backgroundColor: AppColors.purpleBackground,
          body: BodyPageScrollWidget(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            includeSafeArea: true,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 130),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppImages.bucketLogo),
                      Text(
                        AppStrings.nameApp,
                        style: AppTextStyles.sans36bold.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 90),
                  Text(
                    AppStrings.enterApp,
                    style: AppTextStyles.sans22bold.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextWidget(text: AppStrings.email),
                      TextFormFieldWidget(
                        controller: _controllerEmail,
                        focusNode: _emailFocus,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        hintText: AppStrings.email,
                        validator: Validators.multiple([
                          Validators.required(AppStrings.requiredField),
                          Validators.validEmail(AppStrings.invalidEmail)
                        ]),
                      ),
                      const SizedBox(height: 20),
                      const TextWidget(text: AppStrings.password),
                      TextFormFieldWidget(
                        textInputAction: TextInputAction.done,
                        focusNode: _passwordFocus,
                        obscureText: true,
                        hintText: AppStrings.password,
                        controller: _controllerPassword,
                        suffixIcon: const Icon(Icons.visibility_off),
                        validator: Validators.multiple([
                          Validators.required(AppStrings.requiredField),
                        ]),
                        onTapSuffixIcon: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  ElevatedButtonWidget(
                    elevatedButtonType: ElevatedButtonType.white,
                    text: AppStrings.login,
                    onPressed: () {
                      _onSubmitted();
                    },
                    buttonMaxWidth: 240,
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.createAccount,
                      style: AppTextStyles.sans16regular.copyWith(
                        color: AppColors.white61Opacity,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  Future _onSubmitted() async {
    // Modular.to.navigate(AppRoutes.home);
    if (_formKey.currentState!.validate()) {
      _emailFocus.unfocus();
      _passwordFocus.unfocus();
    }
  }
}
