import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'beach_model.dart';

import 'recommended_model.dart';
import 'selected_place_screen.dart';
import 'recommended_model_3.dart';
import 'selected_place_screen_3.dart';
//import 'bottom_navigation_bar.dart';
//import 'custom_tab_indicator.dart';
import 'recommended_model_copy.dart';
import 'selected_place_screen_copy.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Page Controller
  final _pageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomNavigationBarTravel(),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/iglesia2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              // Custom Navigation Drawer and Search Button

              // Text Widget for Title
              Padding(
                padding: EdgeInsets.only(top: 48, left: 28.8),
                child: Text(
                  'MOGOTES \nVíve La Naturaleza',
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 45.6, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Conocer',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 25.6,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffb55e28),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Custom Tab bar with Custom Indicator

              // ListView widget with PageView
              // Recommendations Section
              Container(
                height: 218.4,
                margin: EdgeInsets.only(top: 16),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    recommendations.length,
                    (int index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SelectedPlaceScreen(
                                recommendedModel: recommendations[index])));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 28.8),
                        width: 333.6,
                        height: 218.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                                recommendations[index].image),
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 19.2,
                              left: 19.2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4.8),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaY: 19.2, sigmaX: 19.2),
                                  child: Container(
                                    height: 36,
                                    padding: EdgeInsets.only(
                                        left: 16.72, right: 14.4),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: <Widget>[
                                        SvgPicture.asset(
                                            'assets/svg/icon_location.svg'),
                                        SizedBox(
                                          width: 9.52,
                                        ),
                                        Text(
                                          recommendations[index].name,
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffffd544),
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Dots Indicator
              // Using SmoothPageIndicator Library
              /*Padding(
                padding: EdgeInsets.only(left: 28.8, top: 28.8),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: recommendations.length,
                  effect: ExpandingDotsEffect(
                      activeDotColor: Color(0xFF8a8a8a),
                      dotColor: Color(0xFFababab),
                      dotHeight: 4.8,
                      dotWidth: 6,
                      spacing: 4.8),
                ),
              ),*/
              /* experimentoooooooooo
              oooooooooooooooooooooooo
              oooooooooooooooooooooooooooo
              oooooooooooooooooooooooooooooo*/

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Hacer',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 25.6,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffb55e28),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Custom Tab bar with Custom Indicator

              // ListView widget with PageView
              // Recommendations Section
              Container(
                height: 218.4,
                margin: EdgeInsets.only(top: 16),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    recommendationscopy.length,
                    (int index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SelectedPlaceScreencopy(
                                recommendedModelcopy:
                                    recommendationscopy[index])));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 28.8),
                        width: 333.6,
                        height: 218.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                                recommendationscopy[index].image),
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 19.2,
                              left: 19.2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4.8),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaY: 19.2, sigmaX: 19.2),
                                  child: Container(
                                    height: 36,
                                    padding: EdgeInsets.only(
                                        left: 16.72, right: 14.4),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          recommendationscopy[index].name,
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffffd544),
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Dots Indicator
              // Using SmoothPageIndicator Library
              /*Padding(
                padding: EdgeInsets.only(left: 28.8, top: 28.8),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: recommendationscopy.length,
                  effect: ExpandingDotsEffect(
                      activeDotColor: Color(0xFF8a8a8a),
                      dotColor: Color(0xFFababab),
                      dotHeight: 4.8,
                      dotWidth: 6,
                      spacing: 4.8),
                ),
              ),*/
              /* experimentoooooooooo
              oooooooooooooooooooooooo
              oooooooooooooooooooooooooooo
              oooooooooooooooooooooooooooooo*/

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'aventura',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 25.6,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffb55e28),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Custom Tab bar with Custom Indicator

              // ListView widget with PageView
              // Recommendations Section
              Container(
                height: 218.4,
                margin: EdgeInsets.only(top: 16),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    recommendations3.length,
                    (int index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SelectedPlaceScreen3(
                                recommendedModel3: recommendations3[index])));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 28.8),
                        width: 333.6,
                        height: 218.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                                recommendations3[index].image),
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 19.2,
                              left: 19.2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4.8),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaY: 19.2, sigmaX: 19.2),
                                  child: Container(
                                    height: 36,
                                    padding: EdgeInsets.only(
                                        left: 16.72, right: 14.4),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          recommendations3[index].name,
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffffd544),
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Dots Indicator
              // Using SmoothPageIndicator Library
              /* Padding(
                padding: EdgeInsets.only(left: 28.8, top: 28.8),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: recommendations3.length,
                  effect: ExpandingDotsEffect(
                      activeDotColor: Color(0xFF8a8a8a),
                      dotColor: Color(0xFFababab),
                      dotHeight: 4.8,
                      dotWidth: 6,
                      spacing: 4.8),
                ),
              ),*/
              /*ooooooooooooooooooooooooooooooo
              ooooooooooooooooooooooooooooooooooo
              ooooooooooooooooooooooooooooooooo
              oooooooooooooooooooooooooooo¨*/
              // Text Widget for Popular Categories
              // Text Widget for Popular Categories
              /*  Padding(
                padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Otros Sitios',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),

              // ListView for Popular Categories Section

              // ListView for Beach Section
              Container(
                margin: EdgeInsets.only(top: 28.8, bottom: 16.8),
                height: 124.8,
                child: ListView.builder(
                  itemCount: beaches.length,
                  padding: EdgeInsets.only(left: 28.8, right: 12),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 124.8,
                      width: 188.4,
                      margin: EdgeInsets.only(right: 16.8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              CachedNetworkImageProvider(beaches[index].image),
                        ),
                      ),
                    );
                  },
                ),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
