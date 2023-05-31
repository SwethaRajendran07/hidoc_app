import 'package:flutter/material.dart';

class LatestArticleCard extends StatefulWidget {
  const LatestArticleCard({
    super.key,
    required this.description,
  });
  final String description;

  @override
  State<LatestArticleCard> createState() => _LatestArticleCardState();
}

class _LatestArticleCardState extends State<LatestArticleCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 3, top: 4, bottom: 4, right: 3),
          child: Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ),
        Text(
          widget.description,
          style: const TextStyle(
            color: Colors.black,
            height: 1.5,
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
