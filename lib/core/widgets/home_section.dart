import 'package:flutter/material.dart';
class HomeSection extends StatelessWidget {
  const HomeSection({
    required this.title,
    super.key,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child:  const Text(
            'View All',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF272459)),
          ),
        ),
      ],
    );
  }
}
