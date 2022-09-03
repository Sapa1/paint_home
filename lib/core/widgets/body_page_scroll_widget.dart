import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';
import 'conditional_parent_widget.dart';

class BodyPageScrollWidget extends StatelessWidget {
  final Widget child;
  final bool includeSafeArea;
  final EdgeInsets? padding;
  final ScrollPhysics? physics;
  final double? maxWidth;
  final Color backgroundColor;

  const BodyPageScrollWidget({
    required this.child,
    this.includeSafeArea = false,
    this.padding,
    this.physics,
    this.maxWidth,
    this.backgroundColor = AppColors.white,
    Key? key,
  }) : super(key: key);

  double get maximumWidth => kIsWeb ? maxWidth ?? 600 : double.infinity;

  @override
  Widget build(BuildContext context) => ConditionalParentWidget(
        condition: kIsWeb,
        conditionalBuilder: (child) => Center(
          child: child,
        ),
        child: ConditionalParentWidget(
          condition: includeSafeArea,
          conditionalBuilder: (child) => SafeArea(child: child),
          child: LayoutBuilder(
            builder: (context, constraint) => SingleChildScrollView(
              physics: physics,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraint.maxHeight,
                        maxWidth: maximumWidth,
                      ),
                      child: ConditionalParentWidget(
                        condition: padding != null,
                        conditionalBuilder: (child) => Padding(
                          padding: padding!,
                          child: child,
                        ),
                        child: child,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('includeSafeArea', includeSafeArea));
    properties.add(DiagnosticsProperty<EdgeInsets?>('padding', padding));
    properties.add(DiagnosticsProperty<ScrollPhysics?>('physics', physics));
    properties.add(DoubleProperty('maxWidth', maxWidth));
    properties.add(DoubleProperty('maximumWidth', maximumWidth));
    properties.add(ColorProperty('backgroundColor', backgroundColor));
  }
}
