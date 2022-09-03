import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class ConditionalParentWidget extends StatelessWidget {
  const ConditionalParentWidget({
    required this.condition,
    required this.child,
    required this.conditionalBuilder,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final bool condition;
  final Widget Function(Widget child) conditionalBuilder;

  @override
  Widget build(BuildContext context) => condition ? conditionalBuilder(child) : child;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('condition', condition));
    properties.add(ObjectFlagProperty<Widget Function(Widget child)>.has(
        'conditionalBuilder', conditionalBuilder));
  }
}
