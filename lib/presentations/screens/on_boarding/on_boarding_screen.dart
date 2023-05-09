import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_shep_flutter/config/theme/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({ Key? key }) : super( key: key );

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  final _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              context.pushReplacement("/home");
            },
            child: const Text("Saltar")
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                onPageChanged: ( value ) => setState(() => _currentPage = value),
                itemCount: 3,
                itemBuilder: (context, i) {
                  return Text("Hola mundo pantalla $_currentPage");
                }
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,  
                  effect: CustomizableEffect(
                    activeDotDecoration: DotDecoration(
                      width: 5,
                      height: 15,
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    dotDecoration: DotDecoration(
                      width: 6,
                      height: 6,
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                      verticalOffset: 0,
                    ),
                    spacing: 6.0,
                    inActiveColorOverride: (i) => Colors.grey,
                  ),
                  onDotClicked: (index) => _controller.animateToPage(
                    index, 
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeIn
                  ),
                ),
                SizedBox(
                  width: 60.0,
                  height: 60.0,
                  child: FilledButton(
                    onPressed: () {
                      _controller.animateToPage(
                        _currentPage + 1,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn
                      );
                    },
                    child: const Icon(
                      Icons.chevron_right_rounded
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}