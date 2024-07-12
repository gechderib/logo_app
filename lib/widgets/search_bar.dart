import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
      child: Container(
        width: 328.0,
        height: 40.0,
        padding: const EdgeInsets.all(2.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          gradient: LinearGradient(
            colors: [Color(0xFF3C41BF), Color(0xFF74FBDE)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: '검색어를 입력하세요',
              hintStyle: TextStyle(
                color: Color(0xFF3C41BF),
                fontSize: 14,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                borderSide: BorderSide.none,
              ),
              suffixIcon: Icon(
                Icons.search,
                color: Color(0xFF3C41BF),
                size: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
