part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                decoration: const BoxDecoration(
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
                      'Register'
                          .text
                          .size(18)
                          .fontWeight(FontWeight.w700)
                          .color(AppColors.secondarycolor)
                          .makeCentered(),
                      28.h.heightBox,
                      'Email'.text.make(),
                      8.heightBox,
                      const VxTextField(
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
                      const VxTextField(
                        obscureText: true,
                        isPassword: true,
                        contentPaddingLeft: 120,
                        fillColor: Colors.transparent,
                        borderColor: AppColors.secondarycolor,
                        borderRadius: 10,
                        borderType: VxTextFieldBorderType.roundLine,
                        prefixIcon: Icon(Icons.lock),
                      ),
                      20.heightBox,
                      'Confirm Password'.text.make(),
                      8.heightBox,
                      const VxTextField(
                        obscureText: true,
                        isPassword: true,
                        contentPaddingLeft: 120,
                        fillColor: Colors.transparent,
                        borderColor: AppColors.secondarycolor,
                        borderRadius: 10,
                        borderType: VxTextFieldBorderType.roundLine,
                        prefixIcon: Icon(Icons.lock),
                      ),
                      CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: 'Remember me'.text.make(),
                          value: false,
                          onChanged: (value) {}),
                      40.heightBox,
                      PrimaryButton(title: 'Register', onPressed: () {}),
                      20.heightBox,
                      'Already have an account?'
                          .richText
                          .color(AppColors.secondarycolor)
                          .size(14)
                          .semiBold
                          .withTextSpanChildren([
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap =
                                  () => AutoRouter.of(context).push(const Login()),
                            text: 'Login',
                            style: const TextStyle(
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

  // TapGestureRecognizer() {}
}
