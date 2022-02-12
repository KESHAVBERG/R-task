import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class DetailsPage extends StatefulWidget {
  final String PostPic, profilePic, userName, description, hastags, postid;

  const DetailsPage(
      {Key? key,
      required this.PostPic,
      required this.profilePic,
      required this.userName,
      required this.description,
      required this.hastags,
      required this.postid})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(widget.PostPic))),
          ),
          detailsClassForView(
            userName: widget.userName,
            profilePicPath: widget.profilePic,
            postId: widget.postid,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0, 400, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Text(
                        widget.description,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 5, 0, 0),
                      child: Text(
                        widget.hastags,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 8.0, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.indigoAccent,
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(widget.profilePic))),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'John Doe',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Spacer(),
                              Text('11hr')
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35.0, 8, 20, 0),
                            child: Text("Nice Work, I'm Proud of You"),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.indigoAccent,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(widget.profilePic))),
                      ),
                      Container(
                        width: 300,
                        height: 40,
                        child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 3, 0, 0),
                            hintText: 'enter your comment',
                            hintStyle: TextStyle(),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
//****************************************

class detailsClassForView extends StatelessWidget {
  const detailsClassForView(
      {Key? key,
      required this.userName,
      required this.profilePicPath,
      required this.postId})
      : super(key: key);
  final String userName, profilePicPath, postId;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(40, 0, 30, 0),
      margin: EdgeInsets.fromLTRB(0, 320, 0, 0),
      height: 100,
      width: MediaQuery.of(context).size.width,
      // color: Colors.indigoAccent,
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(profilePicPath),
                )),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
            child: Text(
              userName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
            child: IconButton(
              onPressed: () {
                if (Constant.liked.contains(postId)) {
                  Constant.liked.remove(postId);
                } else {
                  Constant.liked.add(postId);
                }
              },
              icon: Constant.liked.contains(postId)
                  ? Icon(
                      Icons.favorite,
                      size: 25,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Colors.white,
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
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
