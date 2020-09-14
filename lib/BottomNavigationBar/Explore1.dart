import 'package:flutter/material.dart';
import 'package:ui1/BottomNavigationBar/FadeAnimation.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
  int totalPage = 7;

  void _onScroll() {}
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              page: 1,
              image: 'assets/Kaup_beach_1.jpg',
              title: 'Kaup Beach',
              description:
                  'Kaup Beach is one of the major beaches in the city of Mangalore. With its tropical climate and bevy of attractions that beckon tourists from across the country, '),
          makePage(
              page: 2,
              image: 'assets/Malpe beach.jpg',
              title: 'Malpe Beach',
              description:
                  'The pristine white sand, pleasant weather, and the delectable food shacks here and the plenty water sports options make Malpe Beach an ideal spot for a quick escape. '),
          makePage(
              page: 3,
              image: 'assets/Manipallake.jpg',
              title: 'Manipal Lake',
              description:
                  "The lake was formed due to the removal of clay soil from the area which was used by tile factories in order to make tiles. The depression then resulted in the formation of a lake as rainwater collected in it"),
          makePage(
              page: 4,
              image: 'assets/Mattu beach.jpg',
              title: 'Mattu Beah',
              description:
                  "People who do not want to be in the company of tourists or hustle bustle around can head to Mattu Beach. The beach is known for its serenity and cleanliness."),
          makePage(
              page: 5,
              image: 'assets/Student Plaza.JPG',
              title: 'Student Plaza',
              description:
                  "A place where students would congregate to celebrate festivals like Holi and Deepavali; it was the ideal place for banners and posters"),
          makePage(
              page: 6,
              image: 'assets/Near arbi falls.jpg',
              title: 'Arbi Falls',
              description:
                  "Breathtakingly beautiful, these falls are located near the Vaishnavi Durga Devi Temple in Dasharath Nagar. "),
          makePage(
              page: 7,
              image: 'assets/NLHRoad.jpeg',
              title: 'NLH Road',
              description: "NLH Road is a part of MIT Manipal"),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    FadeAnimation(
                        2,
                        Text(
                          page.toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                    Text(
                      '/' + totalPage.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                          1,
                          Text(
                            title,
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 50,
                                height: 1.2,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          1.5,
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          2,
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(
                              description,
                              style: TextStyle(
                                  color: Colors.red.withOpacity(.7),
                                  fontWeight: FontWeight.bold,
                                  height: 1.9,
                                  fontSize: 15),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
