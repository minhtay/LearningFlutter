import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.pink, Colors.purple])),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hello \nSign in!',
                        style: TextStyle(fontSize: 40, color: Colors.white)),
                    SvgPicture.asset('assets/images/ic_more.svg',
                        width: 30, height: 38),
                  ],
                ),
              )),
          Expanded(
              flex: 8,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Colors.white),
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          hintText: 'Enter your email',
                          labelText: 'Email',
                          suffixIcon: Icon(Icons.check),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          hintText: 'Enter your email',
                          labelText: 'Email',
                          suffixIcon: Icon(Icons.check),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
