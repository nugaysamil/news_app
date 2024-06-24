part of '../profile_screen.dart';


class _UserCircleAvatar extends StatelessWidget {
  final String userPhoto;
  const _UserCircleAvatar({
    required this.userPhoto,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: userPhoto.startsWith('http')
                ? NetworkImage(userPhoto)
                : AssetImage(userPhoto) as ImageProvider,
          ),
          Positioned(
            right: 2,
            bottom: 0,
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: Icon(
                Icons.add,
                color: Colors.orange,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
