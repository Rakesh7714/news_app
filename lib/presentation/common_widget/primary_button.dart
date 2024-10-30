part of 'common_widget_import.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const PrimaryButton({
    required this.title,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
          minimumSize: Size(MediaQuery.of(context).size.width, 44),
          backgroundColor: AppColors.secondarycolor,
        ),
        onPressed: onPressed,
        child:
            title.text.color(Colors.white).fontWeight(FontWeight.w700).make());
  }
}
