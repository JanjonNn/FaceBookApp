import 'package:facebookapp/post_create.dart';
import 'package:facebookapp/story_create.dart';
import 'package:facebookapp/story_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Text(
            "Facebook",
            style: TextStyle(
              color: Color(0xFF1877F2),
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            Icon(Icons.add_circle_rounded),
            Icon(Icons.search),
            Icon(Icons.message),
          ],
          bottom: TabBar(
            padding: EdgeInsets.only(bottom: 19),
            indicatorColor: Color(0xFF1877F2),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 1,
            tabs: [
              Icon(Icons.home_rounded, color: Color(0xFF1877F2)),
              Icon(Icons.video_camera_back),
              Icon(Icons.factory_outlined),
              Icon(Icons.person_pin),
              Icon(Icons.add_alert),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/person.png"),
                radius: 15,
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  PostCreate(),
                  Divider(color: Colors.grey, thickness: 2),
                  SizedBox(height: 16),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: size.height * .22,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return SizedBox(
                        width: size.width * .3,
                        child: StoryCreate(),
                      );
                    } else {
                      return SizedBox(
                        width: size.width * .3,
                        child: StoryItem(),
                      );
                    }
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 12),
                  itemCount: 20,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(color: Colors.grey, thickness: 2),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              "assets/images/route.png",
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                "Route",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "8h .",
                                    style: TextStyle(
                                        color: Color(
                                          0xFF898F9C,
                                        ),
                                        fontSize: 12),
                                  ),
                                  Icon(
                                    Icons.public,
                                    color: Color(
                                      0xFF898F9C,
                                    ),
                                    size: 12,
                                  )
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Image.asset(
                      "assets/images/routee.png",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.message,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.send,
                            color: Colors.black,
                          ),
                          Spacer(),
                          Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.black,
                          ),

                        ],
                      ),

                    ),
                    Divider(thickness: 2,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
