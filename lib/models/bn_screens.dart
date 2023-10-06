import 'package:flutter/cupertino.dart';

class BnScreen {
  final Widget screen;
  final String title;
  final IconData? firstIcon;
  final IconData? secondIcon;
  final  IconData? leadingIcon;

  BnScreen({
    required this.screen,
    required this.title,
    this.firstIcon,
    this.secondIcon,
    this.leadingIcon,
  });
}
