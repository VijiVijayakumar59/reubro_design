import 'package:flutter/material.dart';
import 'package:userinterface/presentation/widgets/button_widget.dart';
import 'package:userinterface/presentation/widgets/detail_widget.dart';
import 'package:userinterface/presentation/widgets/image_widget.dart';
import 'package:userinterface/utils/colors/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ImageWidget(),
                Container(
                  height: 50,
                  color: blackColor,
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.11,
                      height: MediaQuery.of(context).size.height * 0.1,
                      color: blackColor,
                    ),
                    const Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.11,
                      height: MediaQuery.of(context).size.height * 0.1,
                      color: whiteColor,
                    )
                  ],
                ),
                const ButtonWidget(),
              ],
            ),
            const Positioned(
              top: 249,
              child: DetailWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
