import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) {
        return Container(
            child: Column(
          children: <Widget>[
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummyData[index].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(dummyData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(dummyData[index].time,
                      style: TextStyle(fontSize: 14.0, color: Colors.grey)),
                ],
              ),
              subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(dummyData[index].message,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0))),
            )
          ],
        ));
      },
    ));
  }
}
