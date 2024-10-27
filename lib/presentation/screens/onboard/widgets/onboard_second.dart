part of 'widgets_import.dart';

class OnBoardSecondPage extends StatelessWidget {
  const OnBoardSecondPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/onboard_img2.png',height: 333,width: 333,
            ),
            'Customize your reading experience and join the conversation by creating an account.'
                .text
                .align(TextAlign.center)
                .size(16)
                .color(Colors.black)
                .fontWeight(FontWeight.w500)
                .make()
          ],
        ),
      ],
    );
  }
}
