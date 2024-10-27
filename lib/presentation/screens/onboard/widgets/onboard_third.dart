part of 'widgets_import.dart';

class OnBoardThirdPage extends StatelessWidget {
  const OnBoardThirdPage({
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
              'assets/images/onboard_img1.png',
              height: 333,
              width: 333,
            ),
            'Explore a wide selection of categories, or use the search bar to find specific topics'
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
