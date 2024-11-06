part of 'general_imports.dart';

@RoutePage()
class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  List<TabItem> items = [
    TabItem(
      icon: FeatherIcons.home,
    ),
    TabItem(
      icon: FeatherIcons.tag,
    ),
    TabItem(
      icon: FeatherIcons.plus,
    ),
    TabItem(
      icon: FeatherIcons.hash,
    ),
    TabItem(
      icon: FeatherIcons.user,
    ),
  ];
  int visit = 0;
  List<Widget> pages = [
    const Home(),
    const Categories(),
    const AddPost(),
    const Tag(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(visit),
      bottomNavigationBar: BottomBarCreative(
        items: items,
        backgroundColor: Colors.white,
        color: AppColors.secondarycolor.withOpacity(0.4),
        colorSelected: AppColors.secondarycolor,
        indexSelected: visit,
        isFloating: false,
        highlightStyle: const HighlightStyle(
            sizeLarge: true, isHexagon: false, elevation: 2),
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
    );
  }
}
