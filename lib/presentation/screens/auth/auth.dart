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
                PrimaryButton(
                  title: 'login',
                  onPressed: () => AutoRouter.of(context).push(Login()),
                ),
                8.h.heightBox,
                OutlineButton(
                  title: 'Register',
                  onPressed: () => AutoRouter.of(context).push(Register()),
                ),
                64.h.heightBox
              ],
            ),
          ),
        ),
      ),
    );
  }
}
