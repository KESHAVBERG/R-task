import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String PostPic, profilePic, userName, description, hastags;

  const DetailsPage(
      {Key? key,
      required this.PostPic,
      required this.profilePic,
      required this.userName,
      required this.description,
      required this.hastags})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(widget.PostPic))),
          ),
          Container(
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
                        image: AssetImage(widget.profilePic),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
                  child: Text(
                    widget.userName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
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
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepPurpleAccent,
            margin: EdgeInsets.fromLTRB(0, 400, 0, 0),
            child: Column(
              children: [
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[300],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.indigoAccent,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(widget.profilePic)
                          )
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 50,

                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'enter your comment',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
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
