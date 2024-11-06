part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondarycolor,
      body: FadedScaleAnimation(
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Image.asset(
                AppAssets.assetsImagesMainLogo,
                height: 42.h,
                width: 139.w,
              ).centered(),
              100.h.heightBox,
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      68.h.heightBox,
                      'Login'
                          .text
                          .size(18)
                          .fontWeight(FontWeight.w700)
                          .color(AppColors.secondarycolor)
                          .makeCentered(),
                      28.h.heightBox,
                      'Email'.text.make(),
                      8.heightBox,
                      VxTextField(
                        contentPaddingLeft: 120,
                        fillColor: Colors.transparent,
                        borderColor: AppColors.secondarycolor,
                        borderRadius: 10,
                        borderType: VxTextFieldBorderType.roundLine,
                        prefixIcon: Icon(Icons.email),
                      ),
                      20.heightBox,
                      'Password'.text.make(),
                      8.heightBox,
                      VxTextField(
                        obscureText: true,
                        isPassword: true,
                        contentPaddingLeft: 120,
                        fillColor: Colors.transparent,
                        borderColor: AppColors.secondarycolor,
                        borderRadius: 10,
                        borderType: VxTextFieldBorderType.roundLine,
                        prefixIcon: Icon(Icons.lock),
                      ),
                      40.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 250,
                            child: CheckboxListTile(
                                contentPadding: EdgeInsets.zero,
                                controlAffinity: ListTileControlAffinity.leading,
                                title: 'Remember me'.text.make(),
                                value: false,
                                onChanged: (value) {}),
                          ),
                          "Forgot Password".text.make(),
                        ],
                      ),
                      40.heightBox,
                      PrimaryButton(title: 'Login', onPressed: () {
                        AutoRouter.of(context).push(General());
                      }),
                      20.heightBox,
                      'Don’t have an accont'
                          .richText
                          .color(AppColors.secondarycolor)
                          .size(14)
                          .semiBold
                          .withTextSpanChildren([
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = ()=>AutoRouter.of(context).push(Register()),
                            text: ' Sign Up',
                            style: TextStyle(
                              color: AppColors.secondarycolor,
                              fontWeight: FontWeight.w700,
                            ))
                      ]).makeCentered()
                    ],
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
