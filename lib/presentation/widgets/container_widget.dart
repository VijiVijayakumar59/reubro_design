import 'package:flutter/material.dart';
import 'package:userinterface/presentation/widgets/text_widget.dart';
import 'package:userinterface/utils/colors/colors.dart';

class ContainerWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color? color;
  const ContainerWidget({
    super.key,
    required this.text,
    required this.textColor,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.068,
      width: size.width * 0.15,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: greyColor,
        ),
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Center(
        child: TextWidget(
          text: text,
          textColor: textColor,
          fontWeight: FontWeight.w900,
          fontSize: 16,
        ),
      ),
    );
  }
}
