import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paint_home/modules/register/domain/entities/register_entity.dart';
import 'package:paint_home/modules/register/presentation/bloc/register_event.dart';

import '../../../../core/const/images.dart';
import '../../../../core/const/routes.dart';
import '../../../../core/const/strings.dart';
import '../../../../core/presentation/bloc/show_password_bloc.dart';
import '../../../../core/presentation/bloc/show_password_event.dart';
import '../../../../core/presentation/bloc/show_password_state.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/validators/validators.dart';
import '../../../../core/widgets/body_page_scroll_widget.dart';
import '../../../../core/widgets/elevated_button_widget.dart';
import '../../../../core/widgets/text_form_field_widget.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../../core/widgets/wrap_scaffold_widget.dart';
import '../bloc/register_bloc.dart';
import '../bloc/register_state.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final GlobalKey<FormState> _formKey;

  late final TextEditingController _controllerEmail;
  late final TextEditingController _controllerPassword;
  late final TextEditingController _controllerName;
  late final TextEditingController _controllerConfirmPassword;

  late final FocusNode _emailFocus;
  late final FocusNode _passwordFocus;
  late final FocusNode _nameFocus;
  late final FocusNode _confirmPasswordFocus;

  late final ShowPasswordBloc _showPasswordBloc;
  late final ShowPasswordBloc _showConfirmPasswordBloc;
  late final RegisterBloc _registerBloc;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();

    _controllerEmail = TextEditingController();
    _controllerPassword = TextEditingController();
    _controllerName = TextEditingController();
    _controllerConfirmPassword = TextEditingController();

    _passwordFocus = FocusNode();
    _emailFocus = FocusNode();
    _nameFocus = FocusNode();
    _confirmPasswordFocus = FocusNode();

    _showPasswordBloc = Modular.get<ShowPasswordBloc>();
    _showConfirmPasswordBloc = Modular.get<ShowPasswordBloc>();
    _registerBloc = Modular.get<RegisterBloc>();

    if (kDebugMode) {
      _controllerEmail.text = 'teste@gmail.com';
      _controllerPassword.text = '123';
      _controllerName.text = 'Patrick';
      _controllerConfirmPassword.text = '123';
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controllerEmail.dispose();
    _controllerPassword.dispose();
    _controllerName.dispose();
    _controllerConfirmPassword.dispose();

    _emailFocus.dispose();
    _passwordFocus.dispose();
    _confirmPasswordFocus.dispose();
    _nameFocus.dispose();
  }

  @override
  Widget build(BuildContext context) => WrapScaffoldWidget(
        child: Scaffold(
          backgroundColor: AppColors.purpleBackground,
          body: BlocListener<RegisterBloc, RegisterState>(
            bloc: _registerBloc,
            listener: (context, state) {
              state.maybeWhen(
                orElse: () => null,
                success: () => Modular.to.navigate(AppRoutes.initial),
                loading: () => showDialog(
                  context: context,
                  builder: (context) => const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.yellow,
                    ),
                  ),
                ),
              );
            },
            child: BodyPageScrollWidget(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              includeSafeArea: true,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 50),
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
                      'Criar conta',
                      style: AppTextStyles.sans22bold.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(text: 'Nome'),
                        TextFormFieldWidget(
                          controller: _controllerName,
                          focusNode: _nameFocus,
                          textInputAction: TextInputAction.next,
                          hintText: 'Nome',
                          validator: Validators.multiple([
                            Validators.required(AppStrings.requiredField),
                          ]),
                        ),
                        const SizedBox(height: 20),
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
                        BlocBuilder<ShowPasswordBloc, ShowPasswordState>(
                          bloc: _showPasswordBloc,
                          builder: (context, state) {
                            return TextFormFieldWidget(
                              textInputAction: TextInputAction.next,
                              focusNode: _passwordFocus,
                              obscureText: state.showPassword,
                              hintText: AppStrings.password,
                              controller: _controllerPassword,
                              suffixIcon: state.showPassword
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              onTapSuffixIcon: () {
                                state.maybeWhen(
                                  showPassword: (showPassword) => _showPasswordBloc
                                      .add(HandleShowPassword(showPassword: showPassword)),
                                  orElse: () => null,
                                );
                              },
                              validator: Validators.multiple([
                                Validators.required(AppStrings.requiredField),
                                Validators.equalValue(
                                  'Os campos devem ser iguais',
                                  _controllerConfirmPassword,
                                ),
                              ]),
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                        const TextWidget(text: 'Confirmar senha'),
                        BlocBuilder<ShowPasswordBloc, ShowPasswordState>(
                          bloc: _showConfirmPasswordBloc,
                          builder: (context, state) {
                            return TextFormFieldWidget(
                              textInputAction: TextInputAction.done,
                              focusNode: _confirmPasswordFocus,
                              obscureText: state.showPassword,
                              hintText: 'Repita sua senha',
                              controller: _controllerConfirmPassword,
                              suffixIcon: state.showPassword
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              onTapSuffixIcon: () {
                                state.maybeWhen(
                                  showPassword: (showConfirmPassword) => _showConfirmPasswordBloc
                                      .add(HandleShowPassword(showPassword: showConfirmPassword)),
                                  orElse: () => null,
                                );
                              },
                              validator: Validators.multiple([
                                Validators.required(AppStrings.requiredField),
                                Validators.equalValue(
                                  'Os campos devem ser iguais',
                                  _controllerPassword,
                                ),
                              ]),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    ElevatedButtonWidget(
                      elevatedButtonType: ElevatedButtonType.white,
                      text: 'Criar conta',
                      onPressed: () {
                        _onSubmitted();
                      },
                      buttonMaxWidth: 240,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  Future _onSubmitted() async {
    if (_formKey.currentState!.validate()) {
      _emailFocus.unfocus();
      _passwordFocus.unfocus();
      _nameFocus.unfocus();
      _confirmPasswordFocus.unfocus();
      if (_controllerPassword.text == _controllerConfirmPassword.text) {
        _registerBloc.add(
          DoRegisterEvent(
            registerEntity: RegisterEntity(
              email: _controllerEmail.text.trim(),
              password: _controllerPassword.text.trim(),
              name: _controllerName.text.trim(),
            ),
          ),
        );
      }
    }
  }
}
