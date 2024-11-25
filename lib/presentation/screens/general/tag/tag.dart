part of 'tag_imports.dart';

class Tag extends StatefulWidget {
  const Tag({super.key});

  @override
  State<Tag> createState() => _TagState();
}

class _TagState extends State<Tag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondarycolor,
        title: const Text('Tags'),
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
                        icon: Icon(
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
            return SizedBox(height: 10);
          },
          itemCount: 10),
    );
  }
}
