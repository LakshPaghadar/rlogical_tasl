import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../generated/assets.dart';


class MyClientListPage extends StatefulWidget {
  MyClientListPage({Key? key}) : super(key: key);

  @override
  _MyClientListPageState createState() => _MyClientListPageState();
}

class _MyClientListPageState extends State<MyClientListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        children: <Widget>[
          // List of clients
          _buildSlidableClientCard('Kathy Roberts', '489 Kcal', true, false),
          _buildSlidableClientCard('Jessica Phillips', '120 Kcal', false, false),
          _buildSlidableClientCard('Amy Brown', '346 Kcal', true, true, hasVideoCall: true),
          _buildSlidableClientCard('Bruce Shields', '350 Kcal', false, false),
          _buildSlidableClientCard('Bianca Doyle', '646 Kcal', false, true),
          _buildSlidableClientCard('Florence McMurray', '146 Kcal', false, true),
          _buildSlidableClientCard('Tony Lee', '350 Kcal', false, false),
          _buildSlidableClientCard('Nadia Andersson', '350 Kcal', false, false),
        ],
      ),
    );
  }

  Widget _buildSlidableClientCard(String name, String kcal, bool isOnline, bool isFlagged, {bool hasVideoCall = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Slidable(
        key: ValueKey(name),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.25,
          children: [
            CustomSlidableAction(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r),
                bottomLeft: Radius.circular(8.r),
              ),

              onPressed: (context) {
                // Handle video call action
              },
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              child: Icon(Icons.videocam),
            ),
          ],
        ),
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(Assets.imagesDummyProfileImage), // Replace with client image
                  radius: 24,
                ),
                12.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(kcal, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                if (isOnline)
                  const Icon(Icons.circle, color: Colors.green, size: 12),
                if (isFlagged)
                  const Icon(Icons.flag, color: Colors.red),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClientCard extends StatelessWidget {
  final int index;

  const ClientCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> clientNames = [
      'Kathy Roberts',
      'Jessica Phillips',
      'Amy Brown',
      'Bruce Shields',
      'Bianca Doyle',
      'Florence McMurray',
      'Tony Lee',
      'Nadia Andersson',
    ];
    List<String> clientImages = [
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(clientImages[index]),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      clientNames[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      '${index + 1}20 Kcal',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  index == 2 ? Icon(Icons.videocam) : Container(),
                  SizedBox(width: 16.0),
                  index == 2 ? Icon(Icons.flag, color: Colors.red) : Container(),
                  SizedBox(width: 16.0),
                  index == 2
                      ? Text('7')
                      : index == 4 || index == 5
                      ? Icon(Icons.flag, color: Colors.red)
                      : Icon(Icons.circle, size: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}