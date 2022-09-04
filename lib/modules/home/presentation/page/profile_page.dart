import 'package:flutter/material.dart';

import '../../../../core/widgets/body_page_scroll_widget.dart';
import '../../../../core/widgets/wrap_scaffold_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const WrapScaffoldWidget(
        child: Scaffold(
          body: BodyPageScrollWidget(
            child: Center(
              child: Text(
                'Profile page',
              ),
            ),
          ),
        ),
      );
}
