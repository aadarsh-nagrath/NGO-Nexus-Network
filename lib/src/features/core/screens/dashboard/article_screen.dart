import 'package:vyasa/src/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        label: const Text("2.1k"),
        icon: const Icon(Icons.thumb_up),
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                leadingWidth: 100,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  iconSize: 30,
                  icon: const Icon(CupertinoIcons.chevron_back),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: IconButton(
                      onPressed: () {},
                      iconSize: 35,
                      icon: const Icon(Icons.more_horiz),
                    ),
                  ),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed([
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem Ipsem bla bla ......",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/img/stories/story_5.jpg",
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Richard Gervain",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(height: 5),
                                const Text("2m ago"),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.send_outlined,
                                color: primaryColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark_outline,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    child: Image.asset("assets/img/background/single_post.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                    child: Text(
                      "Empowering Youth: The Role of Volunteerism in Shaping Tomorrow's Leaders",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 10, 30),
                    child: Text(
                      '''
This article could explore the profound impact of volunteerism on youth development and leadership skills. It can feature stories of young volunteers who have taken initiative in various projects, such as organizing youth-led community events, mentoring programs, or educational campaigns. Highlighting the personal growth, skills gained, and leadership qualities honed through volunteer experiences can inspire other young users to get involved and take charge in their communities. Additionally, providing resources or opportunities for youth volunteer programs or internships can further engage the audience and encourage participation.''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  )
                ]),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
