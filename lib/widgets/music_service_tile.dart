import 'package:assignment_app/screens/dummy_service_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MusicServiceTile extends StatelessWidget {
  final String title;
  final String description;
  final String iconNname;
  final String bgImage;

  const MusicServiceTile({
    super.key,
    required this.title,
    required this.description,
    required this.iconNname,
    required this.bgImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 11, left: 30, right: 30),
      padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(44, 45, 49, 1)),
        color: Color.fromRGBO(32, 33, 38, 1),
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage('assets/images/$bgImage'),
          fit: BoxFit.cover,
          alignment: Alignment(0, 0.3),
          opacity: 0.1,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(7),
            width: 47,
            height: 47,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(47, 47, 57, 1),
            ),
            child: SvgPicture.asset(
              "assets/icons/$iconNname",
              width: 32,
              height: 32,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Syne',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Syne',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DummyServiceScreen(service: title),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.only(
                top: 15.62,
                bottom: 15.62,
                left: 20.75,
                right: 20.37,
              ),
              width: 50,
              height: 50,
              color: Colors.transparent,
              child: SvgPicture.asset(
                "assets/icons/white_arrow_icon.svg",
                width: 6.88,
                height: 13.75,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
