import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messanger_screen extends StatelessWidget {
  const Messanger_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: CircleAvatar(
              radius: 15,
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: CircleAvatar(
              radius: 15,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                "https://plus.unsplash.com/premium_photo-1683131431118-ad8b84fc002d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "Chat",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("search")
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 130,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => buildStoryItem(),
                separatorBuilder: (context, index) => SizedBox(
                  width: 20,
                ),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(height: 20),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => buildChatItem(),
              itemCount: 10,
            ),
          ]),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1683131431118-ad8b84fc002d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ahmed El-said Abd El-mouty sdddddddddggggggggggggg",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  maxLines: 1,
                  overflow: TextOverflow
                      .ellipsis, //to make ...  to know is not all text
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "welocme ahmed Elsaid Abd El Mouty",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text("."),
                    Text("11:48"),
                  ],
                )
              ],
            ),
          ),
        ],
      );

  Widget buildStoryItem() => Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://plus.unsplash.com/premium_photo-1683131431118-ad8b84fc002d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: 60,
            height: 60,
            child: Text(
              "Ahmed El-said Abd El-mouty",
              maxLines: 2,
              overflow:
                  TextOverflow.ellipsis, //to make ...  to know is not all text
            ),
          ),
        ],
      );
}
