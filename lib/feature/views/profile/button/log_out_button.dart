// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../profile_screen.dart';

class _LogOutButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _LogOutButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.orange),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 145.0),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.logout, color: Colors.red),
            SizedBox(width: 8),
            Text(
              StringConstant.logOut,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
