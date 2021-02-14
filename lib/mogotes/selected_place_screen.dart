import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'recommended_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'web.dart';

class SelectedPlaceScreen extends StatelessWidget {
  final _pageController = PageController();

  final RecommendedModel recommendedModel;

  SelectedPlaceScreen({Key key, @required this.recommendedModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            // PageView for Image
            PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                recommendedModel.images.length,
                (int index) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          recommendedModel.images[index]),
                    ),
                  ),
                ),
              ),
            ),

            // Custom Button
            SafeArea(
              child: Container(
                height: 57.6,
                margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 57.6,
                        width: 57.6,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          color: Color(0x10000000),
                        ),
                        child:
                            SvgPicture.asset('assets/svg/icon_left_arrow.svg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Content
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 550,
                margin: EdgeInsets.only(left: 28.8, bottom: 48, right: 28.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: recommendedModel.images.length,
                      effect: ExpandingDotsEffect(
                          activeDotColor: Colors.orangeAccent,
                          dotColor: Color(0xFFababab),
                          dotHeight: 4.8,
                          dotWidth: 6,
                          spacing: 4.8),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 19.2),
                      child: Text(
                        recommendedModel.tagLine,
                        maxLines: 6,
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 30.6,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 19.2),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Container(
                            height: 150,
                            child: Text(
                              recommendedModel.description,
                              maxLines: 5,
                              style: GoogleFonts.playfairDisplay(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.black,
                                    offset: Offset(8.0, 8.0),
                                  ),
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                    offset: Offset(-10.0, 5.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 260,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Desde Mogotes',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffffd544),
                                  fontSize: 20),
                            ),
                            Text(
                              '${recommendedModel.price.toString()} Km',
                              style: GoogleFonts.lato(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffd544)),
                            )
                          ],
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            color: Colors.white,
                          ),
                          child: MaterialButton(
                            minWidth: 100.0,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Vista1(),
                              ));
                            },
                            color: Color(0xffb55e28),
                            child: Text('Localización',
                                style: GoogleFonts.lato(
                                    color: Color(0xffffd544), fontSize: 15)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
