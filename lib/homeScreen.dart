import 'package:flutter/material.dart';
import 'package:hidoc_app/model/news_model.dart';
import 'package:hidoc_app/widgets/bulletin_cards.dart';
import 'package:hidoc_app/widgets/explore_more_article_card.dart';
import 'package:hidoc_app/widgets/laytest_article_card.dart';
import 'package:hidoc_app/widgets/news_article_card.dart';
import 'package:hidoc_app/widgets/trending_article_card.dart';
import 'package:hidoc_app/widgets/trending_bulletin_card.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NewsModel? newsModel;
  bool loader = false;

  fetchData() async {
    final url = Uri.parse('http://devapi.hidoc.co:8080/HidocWebApp/api/getArticlesByUid?');
    final response = await http.post(url, body: {'sid': '500', 'uuid': '', 'userId': ''});
    if (response.statusCode == 200) {
      var result = newsModelFromJson(response.body);
      setState(() {
        newsModel = result;
        loader = false;
      });
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  Future<void> _launchUrl(dynamic url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  void initState() {
    loader = true;
    fetchData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: loader
            ? const Center(child: CircularProgressIndicator())
            : Stack(
                children: [
                  ///------------------------------ ui design ------------------------
                  Container(
                    margin: const EdgeInsets.only(right: 227, bottom: 560),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(300),
                      ),
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFCCCC), Color(0xFFFFA07A)], // Specify the gradient colors
                        begin: Alignment.topLeft, // Optional: Set the starting point of the gradient
                        end: Alignment.bottomRight, // Optional: Set the ending point of the gradient
                      ),
                    ),
                  ),
                  // ClipPath(
                  //   clipper: WaveClipper(),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 150,
                      top: 550,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(300),
                      ),
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFCCCC), Color(0xFFFFEFD5)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 10,
                    margin: const EdgeInsets.only(
                      left: 100,
                      right: 100,
                      top: 735,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.house,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///------------------------------- article content ------------------
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 50),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.only(bottomRight: Radius.circular(14), bottomLeft: Radius.circular(14)),
                            color: Colors.cyan[100],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
                            child: Text(
                              "hidoc",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 2),
                          child: Text(
                            "ARTICLES",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 600,
                              height: 70,
                              margin: const EdgeInsets.only(top: 15, left: 15, bottom: 10, right: 15),
                              decoration:
                                  BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white, boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(
                                      1,
                                      1,
                                    ),
                                    blurRadius: 2,
                                    spreadRadius: 0.2
                                    // blurRadius: SizeConfig.defaultSize * Dimens.sizePoint8,
                                    ),
                              ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20, bottom: 20, left: 120),
                                    child: Text(
                                      newsModel!.data.specialityName,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(top: 15, bottom: 20, right: 20),
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        size: 40,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10, left: 15, bottom: 10, right: 15),
                              decoration:
                                  BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white, boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    2,
                                    2,
                                  ),
                                  blurRadius: 2,
                                ),
                              ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 600,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                                      color: Colors.grey[200],
                                    ),
                                    child: newsModel!.data.article.articleImg == ""
                                        ? Image.asset(
                                            'images/newsPaper.png',
                                            width: 60,
                                            height: 60,
                                            color: Colors.grey[400],
                                          )
                                        : Image.network(
                                            newsModel!.data.article.articleImg,
                                            width: 60,
                                            height: 60,
                                            color: Colors.grey[400],
                                          ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
                                    child: Text(
                                      newsModel!.data.article.articleTitle,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                                    child: Text(
                                      newsModel!.data.article.articleDescription,
                                      style: const TextStyle(
                                        height: 1.5,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                                    child: InkWell(
                                      onTap: () {
                                        final Uri url = Uri.parse(newsModel!.data.article.redirectLink);
                                        _launchUrl(url);
                                      },
                                      child: const Text(
                                        "Read full article to earn points",
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Color(0xFF00CED1),
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, top: 8, bottom: 2),
                              child: Text(
                                "Hidoc Bulletin",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25,
                                  color: Colors.black,
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

                            ///--------------------- bulletin  -------------
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: newsModel?.data.bulletin.length,
                              itemBuilder: (context, index) {
                                var items = newsModel!.data.bulletin[index];
                                return BulletinCards(
                                  title: items.articleTitle,
                                  description: items.articleDescription,
                                  directUrl: items.redirectLink,
                                );
                              },
                            ),

                            ///--------------
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.teal[50],
                              ),
                              margin: const EdgeInsets.all(15),
                              padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10, bottom: 20),
                                    child: Text(
                                      "Trending Hidoc Bulletin",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),

                                  ///--------------------- bulletin  -------------
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: newsModel?.data.trandingBulletin.length,
                                    itemBuilder: (context, index) {
                                      var items = newsModel!.data.trandingBulletin[index];
                                      return TrendingBulletin(
                                        title: items.articleTitle,
                                        description: items.articleDescription,
                                        directUrl: items.redirectLink,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),

                            ///----------
                            Container(
                              margin: const EdgeInsets.only(top: 30, left: 60, bottom: 30),
                              color: Colors.orange,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
                                child: Text(
                                  "Read More Bulletins",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),

                            ///---------
                            Visibility(
                              visible: newsModel!.data.latestArticle.isEmpty ? false : true,
                              child: Container(
                                margin: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.zero), border: Border.all(color: Colors.grey)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 10),
                                  child: Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                        ),
                                        child: Text(
                                          "Latest Articles",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),

                                      ///--------------------- bulletin  -------------
                                      ListView.builder(
                                        shrinkWrap: true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemCount: newsModel?.data.latestArticle.length,
                                        itemBuilder: (context, index) {
                                          var items = newsModel!.data.latestArticle[index];
                                          return LatestArticleCard(
                                            description: items.articleDescription,
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.zero), border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 8, bottom: 14, left: 80),
                                      child: Text(
                                        "Trending Articles",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Divider(
                                        height: 2,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 15),
                                      width: 600,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                                          child: Image.network(
                                            newsModel!.data.trandingArticle[0].articleImg,
                                            width: 40,
                                            height: 40,
                                            // size: 180,
                                            color: Colors.grey[500],
                                          )),
                                    ),
                                    Text(
                                      newsModel!.data.trandingArticle[0].articleTitle,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        height: 1.5,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      ),
                                    ),

                                    ///----------------------- trending article ------------
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: newsModel!.data.trandingArticle.length,
                                      itemBuilder: (context, index) {
                                        var items = newsModel!.data.trandingArticle[index];
                                        return TrendingArticleCard(
                                          title: items.articleTitle,
                                          image: items.articleImg,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.zero), border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 8, bottom: 12, left: 50),
                                      child: Text(
                                        "Explore more in Articles",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),

                                    ///------------------ explore article -----------
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: newsModel!.data.exploreArticle.length,
                                      itemBuilder: (context, index) {
                                        var items = newsModel!.data.exploreArticle[index];
                                        return ExploreMoreArticleCard(
                                          content: items.articleTitle,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            ///--------------

                            Container(
                              width: 400,
                              margin: const EdgeInsets.only(top: 30, left: 15, bottom: 30, right: 15),
                              color: Colors.orange,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                                child: Text(
                                  "Explore Hidoc Dr.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 70, right: 40, top: 10, bottom: 20),
                              child: Text(
                                "What's more on Hidoc Dr.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
                              color: Colors.grey[200],
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                                      child: Text(
                                        "News ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),

                                    ///------------------------ news ---------------
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: newsModel!.data.news.length,
                                      itemBuilder: (context, index) {
                                        var items = newsModel!.data.news[index];
                                        return NewsArticleCard(
                                          title: items.title,
                                          image: items.urlToImage,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.zero), border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    newsCard('images/champion.png', "Quizzes:", "Participate & Win Exciting Prizes"),
                                    newsCard('images/calculator.png', "Medical\nCalculators:",
                                        "Get Access to 800+ Evidence\nBased Calculators"),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20, left: 15, bottom: 60, right: 15),
                              color: Colors.orange[100],
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Social Network for doctors -\nA Special feature on Hidoc Dr.",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.orange[400],
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                        child: Text(
                                          "Visit",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget newsCard(String image, String title, String subtitle) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.lightBlue[50]),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(
                  image,
                  width: 25,
                  height: 25,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 4, top: 4, bottom: 4, right: 3),
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
