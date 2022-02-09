import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.indigoAccent,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('img/img1.jpg'))),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black.withOpacity(0.3),
                  height: 450,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(270, 70, 20, 70),
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white.withOpacity(0.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            size: 35,
                            color: Colors.grey[300],
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.messenger_outlined,
                            size: 35,
                            color: Colors.grey[300],
                          )),
                      Transform.rotate(
                        angle: -45,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.send,
                              size: 35,
                              color: Colors.grey[300],
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
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
