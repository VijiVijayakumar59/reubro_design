import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:userinterface/presentation/widgets/text_widget.dart';
import 'package:userinterface/utils/colors/colors.dart';
import 'package:userinterface/utils/constant_size/constant_height.dart';

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
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/cougar.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(150)),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 30, right: 22),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.054,
                            width: MediaQuery.of(context).size.width * 0.11,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.23),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: const Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.white54,
                            ),
                          ),
                          const Spacer(),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "AliClinic",
                                style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Veterinary Clinic",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                          Image.asset("assets/logo.png"),
                        ],
                      ),
                    ),
                  ],
                ),
                const KHeight(size: 0.1),
                Container(
                  decoration: const BoxDecoration(
                    color: blackColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(50)
                            // topLeft: Radius.circular(
                            //   50,
                            // ),
                            // topRight: Radius.elliptical(
                            //   2800,
                            //   1500,
                            // ),
                            ),
                  ),
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 26,
                          right: 26,
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: whiteColor,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Color.fromARGB(255, 201, 200, 200),
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 0,
                            minimumSize: const Size(double.infinity, 40),
                          ),
                          onPressed: () {},
                          child: const TextWidget(
                            text: "Send Donation",
                            textColor: blackColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const KHeight(
                        size: 0.04,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 230,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width * 1,
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
                        backgroundColor:
                            const Color.fromARGB(255, 212, 211, 211),
                      ),
                      const KHeight(
                        size: 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.068,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: greyColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                            ),
                            child: const Center(
                              child: TextWidget(
                                text: "₹10",
                                textColor: blackColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.068,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: blackColor,
                              border: Border.all(
                                color: greyColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                            ),
                            child: const Center(
                              child: TextWidget(
                                text: "₹20",
                                textColor: whiteColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.068,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: greyColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                            ),
                            child: const Center(
                              child: TextWidget(
                                text: "₹30",
                                textColor: blackColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.068,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: greyColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                            ),
                            child: const Center(
                              child: TextWidget(
                                text: "₹40",
                                textColor: blackColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                      const KHeight(
                        size: 0.02,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: whiteColor,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Color.fromARGB(255, 201, 200, 200),
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 0,
                          minimumSize: const Size(double.infinity, 40),
                        ),
                        onPressed: () {},
                        child: const TextWidget(
                          text: "Custom Amount",
                          textColor: blackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
