import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum GetOutAppType { logout, disable }

class GetOutAppWidget extends StatelessWidget {
  final Widget child;
  final GetOutAppType? type;

  const GetOutAppWidget({
    required this.child,
    this.type = GetOutAppType.disable,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => _handleWillPopFalse(),
        child: child,
      );
  // @override
  // Widget build(BuildContext context) => WillPopScope(
  //       onWillPop: () async =>
  //           type == GetOutAppType.logout ? _handleWillPop(context) : _handleWillPopFalse(),
  //       child: child,
  //     );

  // Future<bool> _handleWillPop(BuildContext context) async {
  //   final bool getOut = await _buildDialog(context) ?? false;
  //   return getOut;
  // }

  Future<bool> _handleWillPopFalse() async => false;

  // Future<bool?> _buildDialog(BuildContext context) => showDialog<bool>(
  //       context: context,
  //       builder: (context) => DialogWidget(
  //         dialogType: DialogType.confirmation,
  //         message: L10n.of(context).doYouWantToExitApp,
  //         labelCancel: L10n.of(context).generalBack,
  //         labelConfirm: L10n.of(context).generalExit,
  //         onPressedCancel: () => Modular.to.pop(false),
  //         onPressedConfirm: () => Modular.to.pop(true),
  //       ),
  //     );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<GetOutAppType>('type', type));
  }
}
