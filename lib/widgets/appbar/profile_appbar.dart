import 'package:flutter/material.dart';

class ProfileAppbar extends StatelessWidget {
  const ProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color.fromRGBO(215, 215, 215, 1),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '랭킹 1위',
                style: TextStyle(
                  color: Color.fromRGBO(134, 134, 134, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              Text(
                '베스트 리뷰어',
                style: TextStyle(
                  color: Color.fromRGBO(29, 29, 29, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Container(
            width: 60,
          ),
        ],
      ),
    );
  }
}
