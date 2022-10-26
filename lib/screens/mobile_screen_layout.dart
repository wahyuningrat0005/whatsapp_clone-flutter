import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/theme.dart';
import 'package:whatsapp_clone/widgets/contaclist.dart';
import 'package:whatsapp_clone/widgets/status_list.dart';

class MobileLayoutScreen extends StatelessWidget {
  const MobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          centerTitle: false,
          title: Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: (() {}),
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: (() {}),
              icon: const Icon(
                Icons.more_vert,
                color: Color.fromARGB(255, 143, 0, 0),
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 2,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Stack(children: [
                        Container(
                          width: 100,
                          height: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg.JPG'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/stts.JPG'),
                            radius: 30.0,
                          ),
                        ),
                      ]),
                      SizedBox(
                        width: 10,
                      ),
                      Stack(children: [
                        Container(
                          width: 100,
                          height: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg.JPG'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/stts.JPG'),
                            radius: 30.0,
                          ),
                        ),
                      ]),
                      SizedBox(
                        width: 10,
                      ),
                      Stack(children: [
                        Container(
                          width: 100,
                          height: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg.JPG'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/stts.JPG'),
                            radius: 30.0,
                          ),
                        ),
                      ]),
                      SizedBox(
                        width: 10,
                      ),
                      Stack(children: [
                        Container(
                          width: 100,
                          height: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg.JPG'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/stts.JPG'),
                            radius: 30.0,
                          ),
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
            ContactList()
          ],
        ),
      ),
    );
  }
}
