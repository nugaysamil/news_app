part of '../../login_screen.dart';

class _BaseImage extends StatelessWidget {
  const _BaseImage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        Assets.images.baseImage.path,
      ),
    );
  }
}
