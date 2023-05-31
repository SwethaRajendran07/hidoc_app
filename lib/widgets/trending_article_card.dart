import 'package:flutter/material.dart';

class TrendingArticleCard extends StatefulWidget {
  const TrendingArticleCard({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;

  @override
  State<TrendingArticleCard> createState() => _TrendingArticleCardState();
}

class _TrendingArticleCardState extends State<TrendingArticleCard> {
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
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(
            flex: 3,
            child: Image.network(
              widget.image,
              color: Colors.grey[500],
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            flex: 7,
            child: Text(
              widget.title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
