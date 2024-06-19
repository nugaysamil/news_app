part of '../../login_screen.dart';

class _ForgotAndRemember extends StatelessWidget {
  const _ForgotAndRemember();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (bool? newValue) {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                side: BorderSide(
                  color: Colors.orange,
                ),
              ),
              Text(
                StringConstant.rememberMe,
                style: AppStyles.latoTextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Text(
            StringConstant.forgotPassword,
            style: AppStyles.latoTextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
