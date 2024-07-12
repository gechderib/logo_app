import 'dart:async';
import 'package:flutter/material.dart';

class MarqueeWidget extends StatefulWidget {
  final List<String> items;
  final double height;

  MarqueeWidget({required this.items, this.height = 50});

  @override
  _MarqueeWidgetState createState() => _MarqueeWidgetState();
}

class _MarqueeWidgetState extends State<MarqueeWidget> {
  late ScrollController _scrollController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _startScrolling();
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  void _startScrolling() {
    _timer = Timer.periodic(const Duration(milliseconds: 20), (timer) {
      if (_scrollController.hasClients) {
        double maxScrollExtent = _scrollController.position.maxScrollExtent;
        double currentScrollPosition = _scrollController.position.pixels;

        if (currentScrollPosition < maxScrollExtent) {
          _scrollController.jumpTo(currentScrollPosition + 1);
        } else {
          _scrollController.jumpTo(0);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: widget.height,
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: widget.items
              .map(
                (item) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    item,
                    style: const TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1),
                        fontSize: 14.0), // Adjust text style as needed
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
