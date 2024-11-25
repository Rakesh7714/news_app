part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.secondarycolor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.logOut))
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400.h,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: AppColors.secondarycolor),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(AppAssets.assetsImagenetflix),
                ),
                10.h.heightBox,
                'Rakesh'.text.bold.xl2.color(Colors.white).bold.make(),
                'rakesh@gmail.com'.text.xl.color(Colors.white).make(),
                10.h.heightBox,
                'Rakesh who is software engineer who is passoniate about creating or developing mobile app and website. He is very Curious about the Tech. '
                    .text
                    .xl
                    .center
                    .color(Colors.white)
                    .make()
                    .pSymmetric(h: 20),
                10.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        'Posts'.text.xl.color(Colors.white).make(),
                        '9'.text.xl.color(Colors.white).bold.make(),
                      ],
                    ),
                    Column(
                      children: [
                        'Followers'.text.xl.color(Colors.white).make(),
                        '9K'.text.xl.color(Colors.white).bold.make(),
                      ],
                    ),
                    Column(
                      children: [
                        'Following'.text.xl.color(Colors.white).make(),
                        '5'.text.xl.color(Colors.white).bold.make(),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          20.h.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                'My Posts'.text.xl3.bold.make(),
                GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 4,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.9,
                            mainAxisSpacing: 13,
                            crossAxisSpacing: 10,
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(
                            AppAssets.assetsImagenetflix,
                          ).cornerRadius(10),
                          4.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              'The is the one of the biggest ott platform '
                                  .text
                                  .medium
                                  .make()
                                  .expand(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(FeatherIcons.moreVertical))
                            ],
                          )
                        ],
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
