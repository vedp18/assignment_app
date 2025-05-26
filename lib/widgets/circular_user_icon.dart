import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularUserIcon extends StatelessWidget {
  const CircularUserIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,

      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        shape: BoxShape.circle,
      ),

      child: ClipOval(
        child: Align(
          alignment: Alignment(0, 0.55),
          child: SvgPicture.asset(
            "assets/icons/user_icon_outlined.svg",
          ),
        ),
      ),
    );
  }
}
