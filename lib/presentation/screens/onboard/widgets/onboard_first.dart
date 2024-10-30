part of 'widgets_import.dart';

class OnBoardFirstPage extends StatelessWidget {
  const OnBoardFirstPage({
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
              'assets/images/onboard_img3.png',
              height: 333.h,
              width: 333.w,
            ),
            'Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community'
                .text
                .align(TextAlign.center)
                .size(16.sp)
                .color(Colors.black)
                .fontWeight(FontWeight.w500)
                .make()
          ],
        ),
      ],
    );
  }
}
