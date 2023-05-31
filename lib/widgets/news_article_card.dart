import 'package:flutter/material.dart';

class NewsArticleCard extends StatefulWidget {
  const NewsArticleCard({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;

  @override
  State<NewsArticleCard> createState() => _NewsArticleCardState();
}

class _NewsArticleCardState extends State<NewsArticleCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
          child: Text(
            widget.title,
            style: TextStyle(
              height: 1.5,
              color: Colors.grey[600],
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Image.network(
              widget.image,
              height: 240,
              width: 920,
              errorBuilder: (context, error, stackTrace) => const Center(
                child: Text(
                  "invalid image format",
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
