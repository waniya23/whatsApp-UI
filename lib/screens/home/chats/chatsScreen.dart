import 'package:demo_clone/widgets/uiHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      "image":
          "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?cs=srgb&dl=pexels-moose-photos-1587009.jpg&fm=jpg",
      "name": "areesha",
      "lastmsg": "lorem ipsum",
      "time": "04:24 pm",
      "msgs": "4",
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2018/10/29/21/46/human-3782189_1280.jpg",
      "name": "john",
      "lastmsg": "lorem ipsum django",
      "time": "04:22 pm",
      "msgs": "2",
    },
    {
      "image":
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-774909.jpg&fm=jpg",
      "name": "lissa",
      "lastmsg": "ramen noodles django",
      "time": "03:20 pm",
      "msgs": "1",
    },
    {
      "image":
      "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?cs=srgb&dl=pexels-moose-photos-1587009.jpg&fm=jpg",
      "name": "areesha",
      "lastmsg": "lorem ipsum",
      "time": "04:24 pm",
      "msgs": "4",
    },
    {
      "image":
      "https://cdn.pixabay.com/photo/2018/10/29/21/46/human-3782189_1280.jpg",
      "name": "john",
      "lastmsg": "lorem ipsum django",
      "time": "04:22 pm",
      "msgs": "2",
    },
    {
      "image":
      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-774909.jpg&fm=jpg",
      "name": "lissa",
      "lastmsg": "ramen noodles django",
      "time": "03:20 pm",
      "msgs": "1",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 53,
                    backgroundImage: NetworkImage(
                      arrContent[index]["image"].toString(),
                    ),
                  ),
                  title: uiHelper.CustomText(
                    text: arrContent[index]["name"].toString(),
                    height: 14,
                    fontweight: FontWeight.bold
                  ),
                  subtitle: uiHelper.CustomText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 13,
                    color: Color(0xFF889095),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      uiHelper.CustomText(
                        text: arrContent[index]["time"].toString(),
                        height: 12,
                        color: Color(0xFF026500),
                      ),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: Color(0xFF026500),
                        child: uiHelper.CustomText(
                          text: arrContent[index]["msgs"].toString(),
                          height: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 35,
        backgroundColor: Color(0xFF008665),
        child: Image.asset("assets/images/back.png",),
      ),
    );
  }
}
