part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondarycolor,
        title: const Text('Categories'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: "${index + 1}".text.make(),
                title: 'Test'.text.make(),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.edit2,
                          color: Colors.green,
                        ),
                      ),
                      //4.w.widthBox,
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.trash,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
          itemCount: 10),
    );
  }
}
