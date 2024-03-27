import 'package:flutter/material.dart';
import 'package:userinterface/utils/colors/colors.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.302,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/cougar.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 30, right: 22),
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
    );
  }
}
