import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.pink, Colors.purple])),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                ),
                Positioned(
                    top: 10,
                    right: 20,
                    child: SvgPicture.asset('assets/images/ic_more.svg',
                        width: 30, height: 30)),
              ],
            ),
            Column(
              children: [
                SizedBox(width: double.infinity),
                SvgPicture.asset('assets/images/ic_dumbbell.svg',
                    width: 50, height: 50),
                Text('FITNESS CLUB',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Time New Roman')),
              ],
            ),
            Column(
              children: [
                SizedBox(width: double.infinity),
                Text(
                  'Welcome back',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                SizedBox(height: 15),
                OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 2, color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 100, right: 100, top: 10, bottom: 10),
                      child: Text('SIGN IN',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    )),
                SizedBox(height: 20),
                //OutlinedButton(onPressed: () {}, child: Text('SIGN UP'))
                ElevatedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 2, color: Colors.white),
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 100, right: 100, top: 10, bottom: 10),
                      child: Text('SIGN UP',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    )),
              ],
            ),
            Column(
              children: [
                Text(
                  'Login with social media',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SvgPicture.asset('assets/images/ic_instagram.svg',
                      width: 40, height: 40),
                  SizedBox(width: 10),
                  SvgPicture.asset('assets/images/ic_twitter.svg',
                      width: 40, height: 40),
                  SizedBox(width: 10),
                  SvgPicture.asset('assets/images/ic_facebook.svg',
                      width: 40, height: 40)
                ])
              ],
            ),
            SizedBox(height: 40)
          ],
        ));
  }
}
