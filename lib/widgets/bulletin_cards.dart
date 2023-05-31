import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BulletinCards extends StatefulWidget {
  const BulletinCards({
    super.key,
    required this.title,
    required this.description,
    required this.directUrl,
  });
  final String title;
  final String description;
  final String directUrl;

  @override
  State<BulletinCards> createState() => _BulletinCardsState();
}

class _BulletinCardsState extends State<BulletinCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
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
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
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
                color: Color(0xFF00CED1),
                fontWeight: FontWeight.normal,
                fontSize: 12,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFF00CED1), // Optional: Set underline color
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 280, top: 5, bottom: 5),
          child: Container(
            color: const Color(0xFF00CED1),
            height: 6,
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
