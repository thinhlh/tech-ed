import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tech_ed/app/onboarding/presentation/widgets/page_view_onboard.dart';
import 'package:tech_ed/config/routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        onBoardPageView(
            titleText: "Better way to learning is calling you!",
            bodyText:
                "Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue!",
            image: "Splash1",
            context: context),
        onBoardPageView(
            titleText: "find your self by doing what ever you do!",
            bodyText:
                "Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue ",
            image: "Splash2",
            context: context),
        onBoardPageView(
          titleText: "It's not just learning, It's a promise!",
          bodyText:
              "Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue ",
          image: "Splash3",
          context: context,
        ),
      ],
      done: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(Routes.signUp),
        child: const Text(
          'Start',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      onDone: () {},
      showSkipButton: true,
      skip: const Text('skip'),
      next: const Icon(Icons.arrow_forward),
      showDoneButton: true,
      dotsDecorator: getDocDecoration(),
    );
  }

  DotsDecorator getDocDecoration() => DotsDecorator(
        color: const Color(0xFFBDBDBD),
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );
}
