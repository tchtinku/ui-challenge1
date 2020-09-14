import 'package:flutter/material.dart';

class LandscapePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100.0,
            ),
            child: CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/minnie-star.png'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Text('Edit Profile',
                    style: TextStyle(color: Colors.black, fontSize: 16.0)),
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.edit,
                color: Colors.black,
                size: 16.0,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(' Minnie-Star',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0)),
          SizedBox(
            height: 20,
          ),
          Text('Bookmark',
              style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0)),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 5, top: 8),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Malpe beach.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 5, top: 8),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Kaup_beach_1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 5, top: 8),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Manipallake.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 5, top: 8),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Malpe beach.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 5, top: 8),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Kaup_beach_1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 5, top: 8),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Manipallake.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text('Log Out',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
          ),
        ],
      ),
    );
  }
}
