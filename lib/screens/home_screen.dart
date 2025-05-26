import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:assignment_app/widgets/circular_user_icon.dart';
import 'package:assignment_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:assignment_app/views/music_service_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // for making statusbar transparent and bottom navigation bar of particular color
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color.fromRGBO(24, 23, 28, 1),
      ),
    );

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        _searchFocusNode.unfocus();
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color.fromRGBO(24, 23, 28, 1),
        bottomNavigationBar: const CustomBottomNavigationBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Top Banner with search and promo
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 40,
                    ),
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(169, 1, 62, 1),
                          Color.fromRGBO(85, 1, 32, 1),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: SafeArea(
                      child: Column(
                        children: [
                          // Search Bar Row
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 44,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(47, 47, 57, 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/search_icon.svg",
                                        // color: Colors.white,
                                        colorFilter: ColorFilter.mode(
                                          Colors.white,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: TextField(
                                          focusNode: _searchFocusNode,
                                          autofocus: false,
                                          style: TextStyle(color: Colors.white),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Search “Punjabi Lyrics”',
                                            hintStyle: TextStyle(
                                              color: Color.fromRGBO(
                                                97,
                                                97,
                                                107,
                                                1,
                                              ),
                                              fontFamily: 'Syne',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const VerticalDivider(
                                        indent: 11,
                                        endIndent: 11,
                                        color: Color.fromRGBO(69, 69, 79, 1),
                                      ),
                                      const SizedBox(width: 5),
                                      SvgPicture.asset(
                                        "assets/icons/mic_icon.svg",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              const CircularUserIcon(),
                            ],
                          ),
                          const SizedBox(height: 24),

                          // Promo Banner
                          Column(
                            children: [
                              Text(
                                'Claim your',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Syne',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Free Demo',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Lobster',
                                  fontSize: 45,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'for custom Music Production',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Syne',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 12),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 13,
                                    vertical: 7,
                                  ),
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: const Text(
                                  'Book Now',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Syne',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 35,
                    left: -10,
                    child: Image.asset('assets/icons/disk_icon.png', width: 90),
                  ),
                  Positioned(
                    bottom: 25,
                    right: -41,
                    child: Image.asset(
                      'assets/icons/piano_icon.png',
                      width: 135,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              const Text(
                'Hire hand-picked Pros for popular music services',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),

              const SizedBox(height: 24),

              const MusicServiceView(),
            ],
          ),
        ),
      ),
    );
  }
}
