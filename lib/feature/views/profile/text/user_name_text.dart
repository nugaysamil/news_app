part of '../profile_screen.dart';

class UserNameText extends StatelessWidget {
  const UserNameText({required this.userName});

  final User? userName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        userName!.displayName!,
        style: AppStyles.montserratTextStyle(
            fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
