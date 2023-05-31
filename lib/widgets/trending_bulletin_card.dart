import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TrendingBulletin extends StatefulWidget {
  const TrendingBulletin({
    super.key,
    required this.title,
    required this.description,
    required this.directUrl,
  });
  final String title;
  final String description;
  final String directUrl;

  @override
  State<TrendingBulletin> createState() => _TrendingBulletinState();
}

class _TrendingBulletinState extends State<TrendingBulletin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Text(
            widget.description,
            style: const TextStyle(
              height: 1.5,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: InkWell(
            onTap: () {
              setState(() {
                final Uri url = Uri.parse(widget.directUrl);
                _launchUrl(url);
              });
            },
            child: const Text(
              "Read More",
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color(0xFF00CED1),
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _launchUrl(dynamic url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
