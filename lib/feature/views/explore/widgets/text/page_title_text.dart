part of '../../explore_screen.dart';

class PageTitle extends StatelessWidget {
  final String textTitle;

  const PageTitle({
    Key? key,
    required this.textTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textTitle,
            style: AppStyles.latoTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              StringConstant.seeMore,
              style: GoogleFonts.lato(
                color: Colors.blue,
                fontSize: 12
              ),
            ),
          ),
        ],
      ),
    );
  }
}
