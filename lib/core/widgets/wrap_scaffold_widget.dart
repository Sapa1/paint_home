import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../helpers/keyboard_manager.dart';
import 'conditional_parent_widget.dart';
import 'get_out_app_widget.dart';

class WrapScaffoldWidget extends StatelessWidget with KeyboardManager {
  final Widget child;
  final VoidCallback? onTap;
  final bool? hasWillPop;
  final GetOutAppType? willPopType;

  const WrapScaffoldWidget({
    required this.child,
    Key? key,
    this.onTap,
    this.hasWillPop,
    this.willPopType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ConditionalParentWidget(
        condition: hasWillPop ?? false,
        conditionalBuilder: (child) => GetOutAppWidget(type: willPopType, child: child),
        child: _buildChild(context),
      );

  Widget _buildChild(BuildContext context) => GestureDetector(
        onTap: () => _onTap(context),
        child: child,
      );

  void _onTap(BuildContext context) {
    onTap?.call();
    hideKeyboard(context);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool?>('confirmExit', hasWillPop));
    properties.add(ObjectFlagProperty<VoidCallback?>.has('onTap', onTap));
    properties.add(EnumProperty<GetOutAppType?>('willPopType', willPopType));
  }
}
