import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key, required this.text, required this.image,
  }) : super(key: key);
  final String text,image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          'ART LIFE',
          style: TextStyle(
              color: Colors.green.shade900,
              fontSize: 60,
              fontWeight: FontWeight.bold,fontFamily: 'Nunito'),
        ),
        Text(text,textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF979797),fontFamily: 'Pacifico',fontStyle: FontStyle.italic,
            )),
        Spacer(),
        Image.asset(image,
          width: 500,

        ),

      ],
    );
  }
}

