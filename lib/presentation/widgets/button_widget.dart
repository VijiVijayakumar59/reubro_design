import 'package:flutter/material.dart';
import 'package:userinterface/presentation/widgets/text_widget.dart';
import 'package:userinterface/utils/colors/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: blackColor,
        borderRadius: BorderRadius.only(topRight: Radius.circular(70)),
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: whiteColor,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Color.fromARGB(255, 201, 200, 200),
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              elevation: 0,
              minimumSize: Size(
                MediaQuery.of(context).size.width * 0.8,
                MediaQuery.of(context).size.height * 0.05,
              ),
            ),
            onPressed: () {},
            child: const TextWidget(
              text: "Send Donation",
              textColor: blackColor,
              fontWeight: FontWeight.w800,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
