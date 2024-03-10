import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:women_safety_app/utils/quotes.dart';
import 'package:women_safety_app/widgets/home_widgets/safewebview.dart';

class CustomCarouel extends StatelessWidget {
  const CustomCarouel({Key? key}) : super(key: key);

  void navigateToRoute(BuildContext context, Widget route) {
    Navigator.push(context, CupertinoPageRoute(builder: (context) => route));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
        items: List.generate(
          imageSliders.length,
              (index) => Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                if (index == 0) {
                  navigateToRoute(
                      context,
                      SafeWebView(
                          url:
                          "https://timesofindia.indiatimes.com/life-style/events/happy-womens-day-2024-best-messages-quotes-wishes-and-images-to-share-on-international-womens-day/articleshow/108257281.cms"));
                } else if (index == 1) {
                  navigateToRoute(
                      context,
                      SafeWebView(
                          url:
                          "https://timesofindia.indiatimes.com/city/kolkata/kolkata-celebrates-international-womens-day-advocating-equality-and-inclusivity/articleshow/108344655.cms"));
                } else if (index == 2) {
                  navigateToRoute(
                      context,
                      SafeWebView(
                          url:
                          "https://www.deccanchronicle.com/nation/current-affairs/hyderabad-paints-the-town-pink-for-its-women-884637"));
                } else if(index==3) {
                  navigateToRoute(
                      context,
                      SafeWebView(
                          url:
                          "https://www.sc.com/en/global-careers/experienced-hire/spotlight-career-opportunities/careers-in-gbs-india/"));
                } else if(index==4) {
                  navigateToRoute(
                      context,
                      SafeWebView(
                          url:
                          "https://www.clearias.com/women-in-stem/"));
                } else if(index==5) {
                  navigateToRoute(
                      context,
                      SafeWebView(
                          url:
                          "https://www.clearias.com/reproductive-rights-of-women/"));
                } else if(index==6) {
                  navigateToRoute(
                      context,
                      SafeWebView(
                          url:
                          "https://www.clearias.com/climate-change-and-women/"));
                } else {
                  navigateToRoute(
                      context,
                      SafeWebView(
                          url:
                          "https://www.clearias.com/women-in-armed-forces/"));
                }

              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          imageSliders[index],
                        ))),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.transparent,
                    ]),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8, left: 8),
                      child: Text(
                        articleTitle[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
