part of '../profile_screen.dart';

class UserEmail extends StatelessWidget {
  const UserEmail({
    required this.userEmail,
  });

  final String? userEmail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            userEmail!,
            style: AppStyles.latoTextStyle(
              fontSize: 12,
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            color: Colors.orange,
            iconSize: 12,
            icon: ImageIcon(
              AssetImage(Assets.icons.pencil.path),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
