import 'package:flutter/material.dart';
import 'data/Lists.dart'; //data dart file has the pages list and advice title and content of the strings.
import 'package:covid_advice/widgets/buttons.dart'; //Navigation button is imported from this dart file.

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Widget> _buildindicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numpage; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
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

  int _numpage = 10; //total number of pages
  final PageController _pagecontroller = PageController(initialPage: 0);
  int _currentPage = 1;

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
                    _currentPage = page;
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
                NavigationButton(
                    pagecontroller: _pagecontroller,
                    icondata: Icons.chevron_left,
                    ontap: () {
                      _pagecontroller.previousPage(
                          duration: Duration(milliseconds: 150),
                          curve: Curves.easeIn);
                    }),
                SizedBox(
                  width: 95,
                ),
                NavigationButton(
                    ontap: () {
                      _pagecontroller.nextPage(
                          duration: Duration(milliseconds: 150),
                          curve: Curves.easeIn);
                    },
                    pagecontroller: _pagecontroller,
                    icondata: Icons.chevron_right),
              ],
            )
          ],
        ),
      ),
    );
  }
}
