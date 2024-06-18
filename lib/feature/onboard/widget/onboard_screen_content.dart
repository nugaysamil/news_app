// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_element
part of '../onboard_screen.dart';

class _OnboardContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback? onPressed;

  final String buttonText;
  const _OnboardContent({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            description,
            style: GoogleFonts.lato(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey[700],
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginScreen())),
          child: Text(
            buttonText,
            style: TextStyle(
              color: ColorName.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 55, vertical: 20),
            backgroundColor: ColorName.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        )
      ],
    );
  }
}
