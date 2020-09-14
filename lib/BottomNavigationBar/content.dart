import 'package:flutter/material.dart';
import 'package:ui1/BottomNavigationBar/destination.dart';
//import 'package:ui1/BottomNavigationBar/home1.dart';

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Icon searchBtn = new Icon(Icons.search);
  Widget appBarTitle = new Text('Home');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        title: appBarTitle,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color(0xFFC81379),
            Color(0xFFAF2FB),
          ])),
        ),
        actions: <Widget>[
          IconButton(
              icon: searchBtn,
              onPressed: () {
                setState(() {
                  if (this.searchBtn.icon == Icons.search) {
                    this.searchBtn = new Icon(Icons.close);
                    this.appBarTitle = new TextField(
                      autofocus: true,
                      cursorColor: Colors.redAccent,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: "Search...",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    );
                  } else {
                    this.searchBtn = Icon(Icons.search);
                    this.appBarTitle = new Text('Home');
                  }
                });
              })
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 300.0,
                  height: 150,
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: CustomCarousel(),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 17),
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                labelColor: Colors.blueGrey,
                indicatorPadding: EdgeInsets.only(left: 5, right: 5),
                unselectedLabelColor: Colors.black26,
                controller: _tabController,
                indicatorColor: Colors.black,
                unselectedLabelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                labelStyle: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    text: "Popular",
                  ),
                  Tab(text: "Recommended"),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  ListPopular(),
                  ListPopular(),
                  //!you can make 2  or more than 2 widget list ^^
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class CustomCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyVerticalImage.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final data = dummyVerticalImage[index];

        return Container(
          width: 280,
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(data.urlimage),
              fit: BoxFit.fill,
            ),
          ),
          child: Container(
              width: 170,
              height: 230,
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: [
                    Colors.white70,
                    Colors.black12,
                    Colors.black38,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 20,
                    left: 15,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            data.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}

class ListPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyPopularDestination.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final data = dummyPopularDestination[index];

        return Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          padding: EdgeInsets.only(bottom: 25),
          child: Row(
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                margin: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(data.urlimage),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Transform.translate(
                  offset: Offset(30, -50),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 65, vertical: 63),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Icon(
                      Icons.bookmark_border,
                      size: 15,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                width: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(data.country,
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(height: 10),
                    Text(
                      data.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      data.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14.0,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
