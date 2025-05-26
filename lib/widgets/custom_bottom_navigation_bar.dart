import 'package:assignment_app/providers/bottom_navigation_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  final List<String> _titles = ['Home', 'News', 'TrackBox', 'Projects'];
  final List<String> _icons = [
    'assets/icons/home_navigation_icon.svg',
    'assets/icons/news_navigation_icon.svg',
    'assets/icons/trackbox_navigation_icon.svg',
    'assets/icons/project_navigation_icon.svg',
  ];

  @override
  Widget build(BuildContext context) {
    final int selectedIndex =
        context.watch<BottomNavigationBarProvider>().selectedIndex;
    final provider = context.read<BottomNavigationBarProvider>();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Color.fromRGBO(44, 45, 49, 1))),
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_titles.length, (index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              provider.changeIndex(index);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isSelected)
                  Container(
                    width: 14,
                    height: 7,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(7),
                        bottomRight: Radius.circular(7),
                      ),

                      color: Colors.white,
                    ),
                  ),

                Padding(
                  padding:
                      isSelected
                          ? const EdgeInsets.only(top: 7)
                          : const EdgeInsets.only(top: 14),
                  child: SvgPicture.asset(
                    _icons[index],
                    colorFilter: ColorFilter.mode(
                      isSelected
                          ? Colors.white
                          : Color.fromRGBO(97, 97, 107, 1),
                      BlendMode.srcIn,
                    ),
                    height: 24,
                    width: 24,
                  ),
                ),

                const SizedBox(height: 4),
                Text(
                  _titles[index],
                  style: TextStyle(
                    fontFamily: 'Syne',
                    color: isSelected ? Colors.white : Colors.grey[600],
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
