part of '../profile_screen.dart';

class StatisticsRow extends StatelessWidget {
  const StatisticsRow();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StatisticsContainer(number: '5', label: StringConstant.interesting),
          StatisticsContainer(number: '20', label: StringConstant.saved),
          StatisticsContainer(number: '12', label: StringConstant.following),
        ],
      ),
    );
  }
}

class StatisticsContainer extends StatelessWidget {
  final String number;
  final String label;

  const StatisticsContainer({
    required this.number,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Text(
            number,
            style: GoogleFonts.montserrat(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(label,
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white)),
        ],
      ),
    );
  }
}
