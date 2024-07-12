import 'package:flutter/material.dart';

class TopTenCard extends StatelessWidget {
  const TopTenCard({
    super.key,
    required this.name,
    required this.profile,
    required this.isStarted,
    this.prizeIcon,
    required this.onDetail,
  });

  final String name;
  final String profile;
  final bool isStarted;
  final String? prizeIcon;
  final GestureTapCallback onDetail;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onDetail,
      child: SizedBox(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(
                  profile,
                  fit: BoxFit.cover,
                ),
                isStarted
                    ? Positioned(
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset(prizeIcon!),
                        ),
                      )
                    : Container(),
              ],
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
