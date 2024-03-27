import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:userinterface/presentation/widgets/container_widget.dart';
import 'package:userinterface/presentation/widgets/text_widget.dart';
import 'package:userinterface/utils/colors/colors.dart';
import 'package:userinterface/utils/constant_size/constant_height.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.538,
      width: size.width * 1,
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            50,
          ),
          bottomLeft: Radius.circular(
            50,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextWidget(
              text: "Title",
              textColor: greyColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            const KHeight(
              size: 0.006,
            ),
            const TextWidget(
              text: "Cougar Alex Treatment",
              textColor: blackColor,
              fontWeight: FontWeight.w600,
              fontSize: 28,
            ),
            const KHeight(
              size: 0.02,
            ),
            const TextWidget(
              text: "Description",
              textColor: greyColor,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            const KHeight(
              size: 0.006,
            ),
            const TextWidget(
              text:
                  "Zookeepers originally planned to euthanize it. Need to have spinal surgery, thanks to which it will be able to live fully among relatives in the reserve.",
              textColor: blackColor,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
            const KHeight(
              size: 0.03,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Raised so far",
                  textColor: greyColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                TextWidget(
                  text: "Target",
                  textColor: greyColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ],
            ),
            const KHeight(
              size: 0.005,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "₹14.599",
                  textColor: blackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                ),
                TextWidget(
                  text: "₹20.000",
                  textColor: blackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                ),
              ],
            ),
            const KHeight(
              size: 0.01,
            ),
            LinearProgressBar(
              minHeight: 6,
              maxSteps: 10,
              progressType: LinearProgressBar.progressTypeLinear,
              currentStep: 6,
              progressColor: blackColor,
              backgroundColor: const Color.fromARGB(255, 212, 211, 211),
            ),
            const KHeight(
              size: 0.03,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContainerWidget(
                  text: "₹10",
                  textColor: blackColor,
                ),
                ContainerWidget(
                  text: "₹20",
                  textColor: whiteColor,
                  color: blackColor,
                ),
                ContainerWidget(
                  text: "₹30",
                  textColor: blackColor,
                ),
                ContainerWidget(
                  text: "₹40",
                  textColor: blackColor,
                ),
              ],
            ),
            const KHeight(
              size: 0.02,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromARGB(255, 167, 166, 166),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 0,
                  minimumSize: Size(
                    size.width * 0.8,
                    size.height * 0.05,
                  ),
                ),
                onPressed: () {},
                child: const TextWidget(
                  text: "Custom Amount",
                  textColor: blackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
