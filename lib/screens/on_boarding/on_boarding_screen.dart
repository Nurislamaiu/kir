import 'package:flutter/material.dart';
import 'package:kir/screens/on_boarding/widgets/on_boarding_dot_indicator.dart';
import 'package:kir/screens/on_boarding/widgets/on_boarding_page.dart';
import '../../../main.dart';
import '../../util/color.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> onboardingData = [
      {
        "title": 'Идеальная чистота',
        "description": 'Доверьте свои вещи профессионалам, чтобы они всегда выглядели как новые.',
        "image": "assets/on_boarding/on_boarding1.svg"
      },
      {
        "title": 'Забота о каждой детали',
        "description": 'Качественная чистка с использованием современных технологий и безопасных средств.',
        "image": "assets/on_boarding/on_boarding2.svg"
      },
      {
        "title": 'Удобство для вас',
        "description": 'Простой заказ, быстрая доставка и гарантированный результат.',
        "image": "assets/on_boarding/on_boarding3.svg"
      },
    ];

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: ScreenColor.white,
        appBar: AppBar(
          backgroundColor: ScreenColor.white,
          automaticallyImplyLeading: false,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text(
                'Пропустить',
                style: TextStyle(fontSize: 16, color: ScreenColor.color2),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              /// Image, Title, and SubTitle
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemCount: onboardingData.length,
                  itemBuilder: (context, index) => OnboardingPage(
                    title: onboardingData[index]['title']!,
                    description: onboardingData[index]['description']!,
                    image: onboardingData[index]['image']!,
                  ),
                ),
              ),
              SizedBox(height: 20),

              /// Dot Indicator and Next Button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(
                        onboardingData.length,
                            (index) => OnBoardingDotIndicator(
                          isActive: index == _currentPage,
                        ),
                      ),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        if (_currentPage == onboardingData.length - 1) {
                          Navigator.pushReplacementNamed(context, '/login');
                        } else {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        }
                      },
                      backgroundColor: ScreenColor.color1,
                      label: Text(
                        _currentPage == onboardingData.length - 1
                            ? 'Начать'
                            : 'Далее',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: ScreenColor.white,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}