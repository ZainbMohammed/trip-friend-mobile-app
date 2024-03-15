import 'package:flutter/material.dart';
import 'package:travel_friend_app/Widgets/AppText.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({super.key});

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  // list to stor images name for looping in build function
  List images = ['image1.jpg', 'image2.jpg', 'image3.jpg'];
  List texts = [
    {
      'mainTitle':'Trips1' ,
      'subTitle':'Adverising1',
      'description': '1let start a new trip to get a new frien ,you can get happy memories for ever.Start now what you look ? LETS GO?1'
    },
    {
      'mainTitle':'Trips2' ,
      'subTitle':'Adverising2',
      'description': '2let start a new trip to get a new frien ,you can get happy memories for ever.Start now what you look ? LETS GO?2'
    },
    {
      'mainTitle':'Trips3' ,
      'subTitle':'Adverising3',
      'description': '3let start a new trip to get a new frien ,you can get happy memories for ever.Start now what you look ? LETS GO?3'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (_, index) {
            // page bulder should return a widget or a function that return a wedgit inside it
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assetes/images/' + images[index]),
                fit: BoxFit.cover,
              )),
              child: Container(
                margin: EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                          size: 30,
                          text: texts[index]['mainTitle'],
                          color: Colors.black,
                          font_weight: FontWeight.bold),
                      AppText(
                          size: 20,
                          text: texts[index]['subTitle'],
                          color: Colors.black87,
                          font_weight: FontWeight.normal),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 300,
                        child: AppText(
                            size: 14,
                            text:
                               texts[index]['description'],
                            color: Colors.black54,
                            font_weight: FontWeight.normal),
                      ),
                    ],
                  )
                ]),
              ),
            );
          }),
    );
  }
}
