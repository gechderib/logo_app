import 'package:flutter/material.dart';
import 'package:lgapp/model/profile.model.dart';
import 'package:lgapp/screens/profile.dart';
import 'package:lgapp/widgets/appbar/home_appbar.dart';
import 'package:lgapp/widgets/custom_carousel_slider.dart';
import 'package:lgapp/widgets/footer.dart';
import 'package:lgapp/widgets/search_bar.dart';
import 'package:lgapp/widgets/top_ten_card.dart';
import 'package:lgapp/widgets/top_three_card.dart';
import 'package:lgapp/widgets/top_three_comp.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final List<Map> topThree = [
      {
        'title': 'LG전자 스탠바이미 27ART10AKPL (스탠',
        'description1': '화면을 이동할 수 있고 전환도 편리하다는',
        'description2': '스탠바이미는 사랑입니다!️',
        'rate': '4.89',
        'rateCount': '216',
        'prizeImage': 'assets/images/top3_1.png',
        'prizeImageLevel': 'assets/images/gold.png',
        'btn1Test': 'LG전자',
        'btn1Test2': '편리성'
      },
      {
        'title': 'LG전자  울트라HD 75UP8300KNA (스탠드)',
        'description1': '화면 잘 나오고... 리모컨 기능 좋습니다',
        'description2': '넷플 아마존 등 버튼하나로 바로 접속 되',
        'rate': '4.36',
        'rateCount': '136',
        'prizeImage': 'assets/images/top3_2.png',
        'prizeImageLevel': 'assets/images/bronz.png',
        'btn1Test': 'LG전자',
        'btn1Test2': '고화질'
      },
      {
        'title': '라익미 스마트 DS4001L NETRANGE',
        'description1': '반응속도 및 화질이나 여러면에서도 부족',
        'description2': '중소기업TV 라익미 제품을 사용해보았',
        'rate': '3,98',
        'rateCount': '98',
        'prizeImage': 'assets/images/top3_3.png',
        'prizeImageLevel': 'assets/images/sliver.png',
        'btn1Test': '라익미',
        'btn1Test2': '가성비'
      },
    ];

    final List<Map> topTen = [
      {
        "isStarted": true,
        "profile": "assets/images/profile1.png",
        "name": "name01",
        "prizeIcon": "assets/images/gold.png",
        "bio": "조립컴 업체를 운영하며 리뷰를 작성합니다."
      },
      {
        "isStarted": false,
        "profile": "assets/images/profile2.png",
        "name": "name02",
        "prizeIcon": "",
        "bio": "조립컴 업체를 운영하며 리뷰를 작성합니다."
      },
      {
        "isStarted": false,
        "profile": "assets/images/profile3.png",
        "name": "name03",
        "prizeIcon": "",
        "bio": "조립컴 업체를 운영하며 리뷰를 작성합니다."
      },
      {
        "isStarted": false,
        "profile": "assets/images/profile1.png",
        "name": "name04",
        "prizeIcon": "",
        "bio": "조립컴 업체를 운영하며 리뷰를 작성합니다."
      },
      {
        "isStarted": false,
        "profile": "assets/images/profile2.png",
        "name": "name05",
        "prizeIcon": "",
        "bio": "조립컴 업체를 운영하며 리뷰를 작성합니다."
      },
      {
        "isStarted": false,
        "profile": "assets/images/profile3.png",
        "name": "name06",
        "prizeIcon": "",
        "bio": "조립컴 업체를 운영하며 리뷰를 작성합니다."
      },
      {
        "isStarted": false,
        "profile": "assets/images/profile1.png",
        "name": "name07",
        "prizeIcon": "",
        "bio": "조립컴 업체를 운영하며 리뷰를 작성합니다."
      },
      {
        "isStarted": false,
        "profile": "assets/images/profile2.png",
        "name": "name08",
        "prizeIcon": "",
        "bio": "조립컴 업체를 운영하며 리뷰를 작성합니다."
      },
      {
        "isStarted": false,
        "profile": "assets/images/profile3.png",
        "name": "name09",
        "prizeIcon": "",
        "bio": "조립컴 업체를 운영하며 리뷰를 작성합니다."
      },
      {
        "isStarted": false,
        "profile": "assets/images/profile1.png",
        "name": "name10",
        "prizeIcon": "",
        "bio": "조립컴 업체를 운영하며 리뷰를 작성합니다."
      },
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeAppbar(),
          Container(
            color: const Color.fromARGB(255, 236, 235, 235),
            height: screenHeight - 125 - 33,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  CustomSearchBar(),
                  const CustomCarouselSlider(),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "제일 핫한 리뷰를 만나보세요",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(97, 97, 97, 1),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "리뷰️  랭킹⭐ top 3",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  Column(
                    children: topThree.map(
                      (item) {
                        return TopThreeCard(
                          title: item['title'],
                          description1: item['description1'],
                          description2: item['description2'],
                          rate: item['rate'],
                          rateCount: item['rateCount'],
                          prizeImage: item['prizeImage'],
                          prizeImageLevel: item['prizeImageLevel'],
                          btnText1: item['btn1Test'],
                          btnText2: item['btn1Test2'],
                        );
                      },
                    ).toList(),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "골드 계급 사용자들이예요",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(97, 97, 97, 1),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "베스트 리뷰어 🏆 Top10",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    color: Colors.white,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                      itemCount: topTen.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final item = topTen[index];
                        return Row(
                          children: [
                            TopTenCard(
                              onDetail: () {
                                print("the detail of the data is: ");
                                print(item);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileScreen(
                                      profile: ProfileModel.fromJson({...item}),
                                    ),
                                  ),
                                );
                              },
                              isStarted: item['isStarted'],
                              name: item['name'],
                              profile: item['profile'],
                              prizeIcon: item['prizeIcon'],
                            ),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  Footer(),
                  // TopThreeComp(
                  //   title: "wowo",
                  //   titleRight: "lkdfjdslkf",
                  //   description1: "lsdkjf",
                  //   description2: "description2",
                  //   prizeImage: "prizeImage",
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
