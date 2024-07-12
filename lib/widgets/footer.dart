import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "LOGO inc.",
            style: TextStyle(
              color: Color.fromRGBO(134, 134, 134, 1),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "회사 소개 ",
                style: TextStyle(
                  color: Color.fromRGBO(134, 134, 134, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "|",
                style: TextStyle(
                  color: Color.fromRGBO(134, 134, 134, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "인재 채용",
                style: TextStyle(
                  color: Color.fromRGBO(134, 134, 134, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text("|"),
              Text(
                "기술 블로그",
                style: TextStyle(
                  color: Color.fromRGBO(134, 134, 134, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "|",
                style: TextStyle(
                  color: Color.fromRGBO(134, 134, 134, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "리뷰 저작권",
                style: TextStyle(
                  color: Color.fromRGBO(134, 134, 134, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.send,
                    size: 14,
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                  SizedBox(width: 3),
                  Text(
                    "review@logo.com",
                    style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: Color.fromRGBO(134, 134, 134, 1))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "KOR",
                      style: TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 14,
                      color: Color.fromRGBO(134, 134, 134, 1),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Container(
            height: 2,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Color.fromRGBO(200, 200, 200, 1),
            ),
          ),
          SizedBox(height: 15),
          Text(
            "@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구 ",
            style: TextStyle(
              color: Color.fromRGBO(134, 134, 134, 1),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
