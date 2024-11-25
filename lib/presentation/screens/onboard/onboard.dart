part of 'onboard_import.dart';

@RoutePage()
class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  OnboardViewModels onboardViewModels = OnboardViewModels();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: PageView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.assetsImagesMainLogo,
                height: 42.h,
                width: 139.w,
                color: AppColors.secondarycolor,
              ),
              61.h.heightBox,
              PageView(
                  controller: onboardViewModels.pageController,
                  children: const [
                    OnBoardFirstPage(),
                    OnBoardSecondPage(),
                    OnBoardThirdPage(),
                  ]).expand(),
              SizedBox(
                height: 61.h,
              ),
              // PrimaryButton(
              //     title: 'Get Started',
              //     onPressed: () =>
              //         AutoRouter.of(context).push(const AuthRoute())),
              // PrimaryButton(
              //     title: 'Get Started',
              //     onPressed: () {
              //       ApiClient().getRequest(path: ApiEndpointUrls.tags);
              //     }),
              PrimaryButton(
                  title: 'Get Started', 
                  onPressed: () {
                    ApiClient().addTags(path: ApiEndpointUrls.addtags);
                  }),
              SizedBox(
                height: 61.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Skip"
                      .text
                      .color(AppColors.secondarycolor)
                      .fontWeight(FontWeight.w700)
                      .make(),
                  SmoothPageIndicator(
                      effect: const WormEffect(
                        activeDotColor: AppColors.secondarycolor,
                        dotHeight: 12,
                        dotWidth: 12,
                      ),
                      controller: onboardViewModels.pageController,
                      count: 3),
                  "Next"
                      .text
                      .color(AppColors.secondarycolor)
                      .fontWeight(FontWeight.w700)
                      .make()
                ],
              )
            ],
          )
        ]),
      ),
    ));
  }
}
