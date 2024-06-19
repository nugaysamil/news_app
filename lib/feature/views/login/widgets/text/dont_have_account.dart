part of '../../login_screen.dart';

class _DontHaveAccount extends StatelessWidget {
  const _DontHaveAccount();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          StringConstant.dontHaveAccount,
          style: AppStyles.latoTextStyle(
            fontSize: 14,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            StringConstant.signUp,
            style: GoogleFonts.lato(
              color: Colors.orange,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
