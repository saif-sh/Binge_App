import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class mainpg extends StatefulWidget {
  const mainpg({super.key});

  @override
  State<mainpg> createState() => _mainpgState();
}

class _mainpgState extends State<mainpg> {
  int activeIndex = 0;
  final movimg = [
    'https://images.unsplash.com/photo-1509281373149-e957c6296406?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1928&q=80',
    'https://images.unsplash.com/photo-1626814026160-2237a95fc5a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
    'https://images.unsplash.com/photo-1515472071456-47b72fb3caff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    'https://images.unsplash.com/photo-1453227588063-bb302b62f50b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
    'https://images.unsplash.com/photo-1453227588063-bb302b62f50b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
  ];
  final foryou = [
    'https://images.unsplash.com/photo-1509281373149-e957c6296406?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1928&q=80',
    'https://images.unsplash.com/photo-1626814026160-2237a95fc5a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
    'https://images.unsplash.com/photo-1515472071456-47b72fb3caff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    'https://images.unsplash.com/photo-1453227588063-bb302b62f50b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
    'https://images.unsplash.com/photo-1453227588063-bb302b62f50b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 21, 19, 24),
        body: Stack(
          children: [
            SafeArea(
                child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 120,
                            height: 100,
                            child: Image.asset('assets/binge_logo.png')),
                        const SizedBox(
                          width: 60,
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(150)),
                              height: 50,
                              width: 40,
                              child: Image.asset('assets/prof pic.jpg'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                          height: 100,
                          child: Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 1,
                      ),
                      content(),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "For You",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  foryoulist(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "New & Hot 🔥",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  foryoulist(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "RomCom",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  foryoulist(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Horror",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  foryoulist(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Action & Thriller",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  foryoulist(),
                ],
              ),
            ))
          ],
        ));
  }

  Widget content() {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 350,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
          itemCount: movimg.length,
          itemBuilder: (context, index, realIndex) {
            final movimg1 = movimg[index];

            return buildImage(movimg1, index);
          },
        ),
        const SizedBox(
          height: 22,
        ),
        buildindicator(),
      ],
    );
  }

  Widget buildImage(String movimg1, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 63, 85, 198),
            borderRadius: BorderRadius.circular(30)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: SizedBox.fromSize(
            child: Image.network(
              movimg1,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  buildindicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: movimg.length,
        effect: const ExpandingDotsEffect(
            dotHeight: 12,
            dotWidth: 12,
            dotColor: Color.fromARGB(255, 65, 65, 65)),
      );

  Widget foryoulist() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(0),
          child: CarouselSlider.builder(
            options: CarouselOptions(
                viewportFraction: 0.48, enableInfiniteScroll: false),
            itemCount: foryou.length,
            itemBuilder: (context, index, realIndex) {
              final foryou1 = foryou[index];

              return buildImage1(foryou1, index);
            },
          ),
        ),
      ],
    );
  }

  Widget buildImage1(String foryou1, int index) => Container(
        width: 150,
        margin: EdgeInsets.symmetric(horizontal: 0),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 63, 85, 198),
            borderRadius: BorderRadius.circular(30)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: SizedBox.fromSize(
            child: Image.network(
              foryou1,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
}
