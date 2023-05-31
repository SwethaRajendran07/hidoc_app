import 'package:flutter/material.dart';

class ExploreMoreArticleCard extends StatefulWidget {
  const ExploreMoreArticleCard({
    super.key,
    required this.content,
  });
  final String content;

  @override
  State<ExploreMoreArticleCard> createState() => _ExploreMoreArticleCardState();
}

class _ExploreMoreArticleCardState extends State<ExploreMoreArticleCard> {
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
          widget.content,
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
