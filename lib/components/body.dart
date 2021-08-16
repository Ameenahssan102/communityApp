import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/components/splash_content.dart';
import 'package:project1/screen/sign_in_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map> splashData = [
    {'text': 'Welcome to our Community', 'image': 'assets/images/14.jpg'},
    {
      'text': 'Add elements that will calm your space and soothe your soul',
      'image': 'assets/images/10.jpg'
    },
    {
      'text': 'We shape our homes and then our homes shape us',
      'image': 'assets/images/12.jpg'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 6,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]['text'],
                  image: splashData[index]['image'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    Spacer(),
                    // ignore: deprecated_member_use
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.green.shade900,
                          onPressed: () {
                            Navigator.pushNamed(context, SignInScreen.routeName);
                          },
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color:
              currentPage == index ? Colors.green.shade900 : Color(0xFF979797),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}


