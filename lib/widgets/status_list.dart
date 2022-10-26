import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';

class StatusList extends StatelessWidget {
  const StatusList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: status.length,
        itemBuilder: ((context, index) {
          return Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 40,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(
                          status[index]['background'].toString(),
                        ),
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage(status[index]['status'].toString()),
                    ),
                  )
                ],
              )
            ],
          );
        }),
      ),
    );
  }
}
