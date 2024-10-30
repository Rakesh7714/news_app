part of 'splash_import.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    moveToOnBoard();
    super.initState();
  }

  moveToOnBoard() async {
    await Future.delayed(const Duration(seconds: 4), () {
      AutoRouter.of(context).push(OnBoardRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: FadedScaleAnimation(
        child: Center(
            child: Image.asset(
          AppAssets.assetsImagesMainLogo,
          height: 42.h,
          width: 139.w,
        )),
      ),
    );
  }
}
