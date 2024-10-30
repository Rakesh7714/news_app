part of 'auth_imports.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppAssets.assetsImagesAuthBg,
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.assetsImagesMainLogo,
                  height: 42.h,
                  width: 139.w,
                ).centered(),
                const Spacer(),
                'Explore the world,\nBillions of Thoughts.'
                    .text
                    .color(Colors.white)
                    .size(28.sp)
                    .fontWeight(FontWeight.w700)
                    .align(TextAlign.left)
                    .make(),
                24.h.heightBox,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      minimumSize: Size(MediaQuery.of(context).size.width, 44),
                      backgroundColor: AppColors.secondarycolor,
                    ),
                    onPressed: () {
                      //AutoRouter.of(context).push(AuthRoute());
                    },
                    child: "Login"
                        .text
                        .color(Colors.white)
                        .fontWeight(FontWeight.w700)
                        .make()),
                8.h.heightBox,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.r)),
                      minimumSize: Size(MediaQuery.of(context).size.width, 44),
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: () {
                      //AutoRouter.of(context).push(AuthRoute());
                    },
                    child: "Register"
                        .text
                        .color(Colors.white)
                        .fontWeight(FontWeight.w700)
                        .make()),
                64.h.heightBox
              ],
            ),
          ),
        ),
      ),
    );
  }
}
