import 'package:flutter/material.dart';

import 'data.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Widget> _buildindicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numpage; i++) {
      list.add(i == _currenPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: isActive ? 16.0 : 10.0,
      width: isActive ? 16.0 : 10.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.grey[800] : Colors.grey[200],
          borderRadius: BorderRadius.circular(50)),
    );
  }

  int _numpage = 10;
  final PageController _pagecontroller = PageController(initialPage: 0);
  int _currenPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 40),
              alignment: Alignment.center,
              child: Text('COVID Advices'),
            ),
            Container(
              height: 400,
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 30,
                bottom: 0,
              ),
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: _pagecontroller,
                onPageChanged: (int page) {
                  setState(() {
                    _currenPage = page;
                  });
                },
                children: pagesList,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildindicator(),
            ),
            SizedBox(
              height: 76,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _pagecontroller.previousPage(
                        duration: Duration(milliseconds: 150),
                        curve: Curves.easeIn);
                  },
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey[900]),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 95,
                ),
                GestureDetector(
                  onTap: () {
                    _pagecontroller.nextPage(
                        duration: Duration(milliseconds: 150),
                        curve: Curves.easeIn);
                  },
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey[900]),
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
