part of 'add_post_imports.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    QuillController _controller = QuillController.basic();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.secondarycolor,
        title: 'Add Posts'.text.color(Colors.white).make(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FeatherIcons.check,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1711945844277-9f9efeb5e138?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmxhbmslMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww',
                fit: BoxFit.cover,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(FeatherIcons.camera)),
            ],
          ),
          20.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderColor: AppColors.secondarycolor,
            borderRadius: 10,
            borderType: VxTextFieldBorderType.roundLine,
            hint: 'Title',
          ),
          20.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderColor: AppColors.secondarycolor,
            borderRadius: 10,
            borderType: VxTextFieldBorderType.roundLine,
            hint: 'Slugs',
          ),
          20.h.heightBox,
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Tags'.text.make(),
                const Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
          20.h.heightBox,
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Categories'.text.make(),
                const Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
          QuillToolbar.simple(
            controller: _controller,
          ),
          SizedBox(
              height: 400,
              child: QuillEditor.basic(
                controller: _controller,
              )),
        ],
      ),
    );
  }
}
