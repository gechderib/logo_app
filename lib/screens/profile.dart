import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lgapp/model/profile.model.dart';
import 'package:lgapp/widgets/appbar/profile_appbar.dart';
import 'package:lgapp/widgets/string_carousel.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.profile});

  final ProfileModel profile;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 236, 235, 235),
          child: Column(
            children: [
              const ProfileAppbar(),
              Container(
                color: const Color.fromARGB(255, 236, 235, 235),
                height: screenHeight - 90,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      ProfileDetail(profile: profile),
                      const SizedBox(height: 20),
                      const ProfileFilter(),
                      const ProfileRate(),
                      UserProfile(profile: profile),
                      MarqueeWidget(
                        items: const [
                          '“가격 저렴해요”',
                          '“CPU온도 고온”',
                          '“서멀작업 가능해요”',
                          '“게임 잘 돌아가요”',
                        ],
                      ),
                      const ProfileBottom(),
                      Container(
                        height: 1,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        color: const Color.fromRGBO(240, 240, 240, 1),
                      ),
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.sms,
                              color: Color.fromRGBO(97, 97, 97, 1),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "댓글 달기..",
                              style: TextStyle(
                                color: Color.fromRGBO(97, 97, 97, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileBottom extends StatelessWidget {
  const ProfileBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.bolt,
                  size: 30,
                  color: Color.fromRGBO(62, 61, 197, 1),
                ),
              ),
              Expanded(
                flex: 5,
                child: Text(
                  "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.",
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(97, 97, 97, 1),
                  ), // Adjust font size if needed
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.bolt,
                  size: 30,
                  color: Color.fromRGBO(215, 215, 215, 1),
                ),
              ),
              Expanded(
                flex: 5,
                child: Text(
                  "3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.",
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(97, 97, 97, 1),
                  ), // Adjust font size if needed
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset("assets/images/pic1.png"),
                    ),
                    const SizedBox(width: 15),
                    Expanded(child: Image.asset("assets/images/pic2.png")),
                    const SizedBox(width: 15),
                    Expanded(child: Image.asset("assets/images/pic3.png"))
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
    required this.profile,
  });

  final ProfileModel profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(profile.profile),
              ),
              const SizedBox(width: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profile.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/star.png"),
                      Image.asset("assets/images/star.png"),
                      Image.asset("assets/images/star.png"),
                      Image.asset("assets/images/star.png"),
                      SizedBox(
                        height: 25,
                        child: Image.asset("assets/images/star_gray.png"),
                      ),
                      const SizedBox(width: 3),
                      const Text(
                        "2022.12.09",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          const Icon(
            Icons.bookmark_outline,
            color: Color.fromRGBO(134, 134, 134, 1),
          ),
        ],
      ),
    );
  }
}

class ProfileRate extends StatelessWidget {
  const ProfileRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    "assets/images/detailPick.png",
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Column(
                    children: [
                      const Text("AMD 라이젠 5 5600X 버미어 정품 멀티팩"),
                      Row(
                        children: [
                          Image.asset("assets/images/star.png"),
                          Image.asset("assets/images/star.png"),
                          Image.asset("assets/images/star.png"),
                          Image.asset("assets/images/star.png"),
                          SizedBox(
                            height: 25,
                            child: Image.asset("assets/images/star_gray.png"),
                          ),
                          const SizedBox(width: 3),
                          const Text(
                            "4.07",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Color.fromRGBO(134, 134, 134, 1),
            margin: EdgeInsets.only(top: 20),
          )
        ],
      ),
    );
  }
}

class ProfileFilter extends StatelessWidget {
  const ProfileFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
        children: [
          const Row(
            children: [
              Text(
                '작성한 리뷰',
                style: TextStyle(
                  color: Color.fromRGBO(29, 29, 29, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              SizedBox(width: 10),
              Text(
                '총 35개',
                style: TextStyle(
                  color: Color.fromRGBO(134, 134, 134, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: const Color.fromRGBO(134, 134, 134, 1),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "최신순",
                  style: TextStyle(
                    color: Color.fromRGBO(134, 134, 134, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                  color: Color.fromRGBO(134, 134, 134, 1),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({
    super.key,
    required this.profile,
  });

  final ProfileModel profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: [
          Container(
            height: 100,
            child: Image.asset(profile.profile),
          ),
          const SizedBox(height: 2),
          Text(
            profile.name,
            style: const TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 2),
          profile.isStarted
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 20,
                      child: Image.asset(profile.prizeIcon!),
                    ),
                    const Text(
                      "골드",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(255, 210, 51, 1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              : Container(),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(240, 240, 240, 1),
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: Text(
              profile.bio,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
