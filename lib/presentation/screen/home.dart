import 'package:flutter/material.dart';
import 'package:userinterface/presentation/widgets/button_widget.dart';
import 'package:userinterface/presentation/widgets/detail_widget.dart';
import 'package:userinterface/presentation/widgets/image_widget.dart';
import 'package:userinterface/utils/colors/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ImageWidget(),
                Container(
                  height: size.height * 0.05,
                  color: blackColor,
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      width: size.width * 0.11,
                      height: size.height * 0.1,
                      color: blackColor,
                    ),
                    const Spacer(),
                    Container(
                      width: size.width * 0.11,
                      height: size.height * 0.1,
                      color: whiteColor,
                    )
                  ],
                ),
                const ButtonWidget(),
              ],
            ),
            Positioned(
              top: size.height * 0.302,
              child: const DetailWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
