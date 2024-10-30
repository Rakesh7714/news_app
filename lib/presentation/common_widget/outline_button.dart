part of 'common_widget_import.dart';
class OutlineButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const OutlineButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10.r)),
          minimumSize: Size(MediaQuery.of(context).size.width, 44),
          backgroundColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child:
            title.text.color(Colors.white).fontWeight(FontWeight.w700).make());
  }
}