import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(kMainImage),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(
                  title: "MyList",
                  icon: Icons.add,
                ),
                _PlayButton(),
                const CustomButtonWidget(icon: Icons.info, title: "Info")
              ],
            ),
          ),
        )
      ],
    );
  }
}

TextButton _PlayButton() {
  return TextButton.icon(
    onPressed: () {},
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(kWhiteColor),
    ),
    icon: const Icon(
      Icons.play_arrow,
      size: 25,
      color: kBlackColor,
    ),
    label: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "Play",
        style: TextStyle(
          fontSize: 20,
          color: kBlackColor,
        ),
      ),
    ),
  );
}
