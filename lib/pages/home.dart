import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';
import 'details.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Stack mainStack(String postId, String imgPath, String userName,
      String Description, String hastags, String profilePic) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 450,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.indigoAccent,
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(imgPath))),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: MediaQuery.of(context).size.width,
          color: Colors.black.withOpacity(0.3),
          height: 450,
        ),
        Buttons(isLiked: Constant.liked.contains(postId),),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          PostPic: imgPath,
                          profilePic: profilePic,
                          userName: userName,
                          description: Description,
                          hastags: hastags,
                          postid: postId,
                        )));
          },
          child: Details(
            userName: userName,
            description: Description,
            hastags: hastags,
            priflePic: profilePic,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Header(),
            mainStack("abcdefg", 'img/img2.jpg', 'SRK', "Bad and good", "#bad",
                'img/img1.jpg'),
            mainStack("opqrst", 'img/img1.jpg', 'SRK', "Badgood", "#bad #2022",
                'img/img2.jpg'),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: 40,
            width: 180,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(40)),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  '@sr.keshav',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.notifications_none_outlined,
            size: 30,
          ),
        ],
      ),
    );
  }
}

class Buttons extends StatefulWidget {
  const Buttons({Key? key, required this.isLiked}) : super(key: key);
  final bool isLiked;
  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(280, 60, 20, 70),
      height: 270,
      width: MediaQuery.of(context).size.width,
      color: Colors.white.withOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              shape: BoxShape.circle,
            ),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  size: 35,
                  color:widget.isLiked?Colors.red:Colors.white,
                )),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              shape: BoxShape.circle,
            ),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.messenger_outlined,
                  size: 35,
                  color: Colors.white,
                )),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              shape: BoxShape.circle,
            ),
            child: Transform.rotate(
              angle: -45,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send,
                    size: 35,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details(
      {Key? key,
      required this.userName,
      required this.description,
      required this.hastags,
      required this.priflePic})
      : super(key: key);
  final String userName, description, hastags, priflePic;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 130,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(0, 330, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage(priflePic)),
                      color: Colors.green,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  userName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Text(
            description,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
          ),
          Text(
            hastags,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
