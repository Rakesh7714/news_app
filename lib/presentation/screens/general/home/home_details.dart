part of 'home_imports.dart';

@RoutePage()
class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondarycolor,
        title: 'Netflix will charge money for sharing the password'
            .text
            .ellipsis
            .make(),
      ),
      body: ListView(
        children: [
          Image.asset(AppAssets.assetsImagenetflix),
          10.h.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                'Netflix will charge money for sharing the password'
                    .text
                    .xl2
                    .bold
                    .make(),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.eye)),
                    '99 Views'.text.make(),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.thumbsUp,
                          color: Colors.green,
                        )),
                    '0'.text.make(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.thumbsDown,
                          color: Colors.red,
                        )),
                    '0'.text.make(),
                  ],
                ),
                'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,'
                    .text
                    .make()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
