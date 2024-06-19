part of '../../login_screen.dart';

class _TextFormFieldText extends StatelessWidget {
  final String label;

  const _TextFormFieldText({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        label,
        style: AppStyles.latoTextStyle(fontSize: 14),
        textAlign: TextAlign.left,
      ),
    );
  }
}
