import 'package:flutter/material.dart';

class TopThreeCard extends StatelessWidget {
  const TopThreeCard({
    super.key,
    required this.title,
    required this.description1,
    required this.description2,
    required this.rate,
    required this.rateCount,
    required this.prizeImage,
    required this.prizeImageLevel,
    required this.btnText1,
    required this.btnText2,
  });

  final String title;
  final String description1;
  final String description2;
  final String rate;
  final String rateCount;
  final String prizeImage;
  final String prizeImageLevel;
  final String btnText1;
  final String btnText2;

  final star = "assets/images/star.png";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            height: 150,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 18,
                  child: Image.asset(
                    prizeImageLevel,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 120,
                  child: Image.asset(
                    prizeImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: screenWidth - 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Noto Sans KR",
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      '• ',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.55, // Adjust this for vertical alignment
                      ),
                    ),
                    Expanded(
                      child: Text(
                        description1,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      '• ',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.55, // Adjust this for vertical alignment
                      ),
                    ),
                    Expanded(
                      child: Text(
                        description2,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ), //background: rgba(255, 210, 51, 1);

                Row(
                  children: [
                    Image.asset(star),
                    const SizedBox(width: 5),
                    Text(
                      rate,
                      style: const TextStyle(
                        color: Color.fromRGBO(255, 210, 51, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "($rateCount)",
                      style: const TextStyle(
                        color: Color.fromRGBO(196, 196, 196, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(240, 240, 240, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(btnText1),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(240, 240, 240, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(btnText2),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
