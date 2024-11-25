part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Image.asset(AppAssets.assetsImagenetflix).cornerRadius(20.r),
            20.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Latest Posts'.text.size(16).make(),
                'See All'.text.size(16).make(),
              ],
            ),
            20.h.heightBox,
            ListView.separated(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10.h,
                    ),
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: ()=>AutoRouter.of(context).push(const HomeDetailsRoute()),
                        child: Image.asset(
                          AppAssets.assetsImagenetflix,
                          height: 120.h,
                          width: 180.h,
                          fit: BoxFit.cover,
                        ).cornerRadius(20),
                      ),
                      10.w.widthBox,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Netflix will charge money for sharing the password'
                              .text
                              .maxLines(3)
                              .size(18)
                              .fontWeight(FontWeight.bold)
                              .make(),
                          6.h.heightBox,
                          Row(
                            children: [
                              const Icon(FeatherIcons.clock),
                              4.w.widthBox,
                              '6 Months ago'.text.make()
                            ],
                          ),
                          6.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              '59 Views'.text.make(),
                              const Icon(FeatherIcons.bookmark),
                            ],
                          )
                        ],
                      ).expand(),
                    ],
                  );
                })
          ],
        ),
      ),
    ));
  }
}
