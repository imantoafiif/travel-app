import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/widgets/intro_label.dart';
import 'package:travel_app/widgets/banner.dart' as Banners;

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> with TickerProviderStateMixin {
  late final TabController _tabController;
  final PageController _pageController = PageController(initialPage: 0);
  final PageController _labelController = PageController(initialPage: 0);
  int _currentIndex = 0;

  final List<Widget> _banners = [
    Banners.Banner(image: 'lib/images/banner_1.png'),
    Banners.Banner(image: 'lib/images/banner_2.png'),
    Banners.Banner(image: 'lib/images/banner_3.png'),
  ];

  final List<Widget> _labels = [
    IntroLabel(subtitle: 'At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world'),
    IntroLabel(subtitle: 'To get the best of your adventure you just need to leave and go where you like. we are waiting for you'),
    IntroLabel(subtitle: 'To get the best of your adventure you just need to leave and go where you like. we are waiting for you'),
  ];

  void onSetPage() {
    if (_tabController.index == _banners.length - 1) {
      // Navigator.pushNamed(context, '/login');
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    } else {
      _tabController.index += 1;
    }

    _pageController.animateToPage(
      _tabController.index,
      duration: Duration(milliseconds: 200), curve: Curves.easeInOut
    );
    
    _labelController.animateToPage(
      _tabController.index,
      duration: Duration(milliseconds: 200), curve: Curves.easeInOut
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _banners.length, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: _banners
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    fit: FlexFit.loose,
                    child: Container(
                      color: Colors.white,
                      child: PageView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _labelController,
                        children: [
                          IntroLabel(subtitle: 'At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world'),
                          IntroLabel(subtitle: 'To get the best of your adventure you just need to leave and go where you like. we are waiting for you'),
                          IntroLabel(subtitle: 'To get the best of your adventure you just need to leave and go where you like. we are waiting for you'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        dotHeight: 8.0,
                        activeDotColor: Color(0xff0D6EFD),
                        dotColor: Color(0xffCAEAFF),
                      ),
                      onDotClicked: (index) {

                      },
                    )
                  ),
                  SizedBox(
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(children: [
                        SizedBox(
                          width: double.infinity,
                          height: 56.0,
                          child: ElevatedButton(
                            onPressed: onSetPage,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff0D6EFD),
                                foregroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(16.0)),
                                )),
                            child: Text(
                              _currentIndex == 2 ? 'Get Started' : 'Next',
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
