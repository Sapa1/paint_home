import 'package:flutter/cupertino.dart';
import 'package:paint_home/core/widgets/title_widget.dart';

import 'body_text_widget.dart';

class TitleAndBodyWidget extends StatelessWidget {
  final String number;
  final String textTitle;
  final String textBody;
  final String? icon;
  const TitleAndBodyWidget({
    required this.number,
    required this.textTitle,
    required this.textBody,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitletWidget(
            number: number,
            text: textTitle,
            icon: icon,
          ),
          SizedBox(
            width: 270,
            child: BodyTextWidget(
              text: textBody,
            ),
          ),
        ],
      );
}
