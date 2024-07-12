import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lgapp/model/profile.model.dart';
import 'package:lgapp/screens/home.dart';
import 'package:lgapp/screens/profile.dart';
import 'package:lgapp/service/ui_provider.dart';
import 'package:provider/provider.dart';

class Mainscreen extends StatelessWidget {
  Mainscreen({super.key});

  List<Widget> _widgets = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    // ProfileScreen(
    //   profile: ProfileModel(
    //       isStarted: false,
    //       profile: "assets/images/profile1.png",
    //       name: "Name03",
    //       bio: "조립컴 업체를 운영하며 리뷰를 작성합니다."),
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Center(
          child: _widgets.elementAt(uiProvider.activeIndex),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                uiProvider.changeIndex(0);
              },
              child: Container(
                width: 70,
                child: Column(
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      child: Image.asset("assets/icon/home.png"),
                    ),
                    const Text(
                      '홈',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                uiProvider.changeIndex(1);
              },
              child: Container(
                width: 70,
                child: Column(
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      child: Image.asset("assets/icon/category.png"),
                    ),
                    const Text(
                      '카테고리',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                uiProvider.changeIndex(2);
              },
              child: Container(
                width: 70,
                child: Column(
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      child: Image.asset("assets/icon/uses.png"),
                    ),
                    const Text(
                      '커뮤니티',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                uiProvider.changeIndex(3);
              },
              child: Container(
                width: 70,
                child: Column(
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      child: Image.asset("assets/icon/account.png"),
                    ),
                    const Text(
                      '마이페이지',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
