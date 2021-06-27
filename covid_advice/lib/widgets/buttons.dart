import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  NavigationButton(
      {required this.pagecontroller,
      required this.icondata,
      required this.ontap});

  final PageController pagecontroller;
  final IconData icondata;
  final ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 56,
        width: 56,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.grey[900]),
        child: Icon(
          icondata,
          color: Colors.white,
        ),
      ),
    );
  }
}
