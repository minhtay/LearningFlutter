import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'util/CustomElevatedButton.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
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
                        topRight: Radius.circular(50)
                    ),
                    color: Colors.white),
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 70),
                          Text('Email', style: TextStyle(fontSize: 15)),
                          TextFormField(
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(fontSize: 12),
                              suffixIcon: Icon(Icons.check),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Email', style: TextStyle(fontSize: 15)),
                          TextFormField(
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(fontSize: 12),
                              suffixIcon: Icon(Icons.check),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Password', style: TextStyle(fontSize: 15)),
                          TextFormField(
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(fontSize: 12),
                              suffixIcon: Icon(Icons.visibility),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Password', style: TextStyle(fontSize: 15)),
                          TextFormField(
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(fontSize: 12),
                              suffixIcon: Icon(Icons.visibility),
                            ),
                          )
                        ],
                      ),
                      CustomElevatedButton(
                        width: double.infinity,
                        height: 50,
                        onPressed: () {},
                        borderRadius: BorderRadius.circular(20),
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(width: double.infinity),
                          Text('Don\'t have account'),
                          Text('Sign up', style: TextStyle(fontSize: 20),)
                        ],
                      )
                    ],
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
