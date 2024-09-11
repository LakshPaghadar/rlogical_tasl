import 'package:dummy_api_call_retrofit/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/assets.dart';
import 'calender_page.dart';
import 'my_client_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> _currentIndex = ValueNotifier(0);
  final List<Widget> _pageList = [const CalenderPage(),const ProfilePage(), MyClientListPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            12.horizontalSpace,
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('John Smith',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Personal Trainer', style: TextStyle(fontSize: 12)),
              ],
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: () {},
            ),
            GestureDetector(
              onTap: () {
                // Profile image tapped
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage(Assets
                    .imagesDummyProfileImage), // Replace with a profile image
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 3,
      ),
      body: ValueListenableBuilder(
          valueListenable: _currentIndex,
          builder: (context, value, child) {
            return _pageList[value];
          }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex.value,
        onTap: (index) {
          setState(() {
            _currentIndex.value = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1),
            label: 'Add Client',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Send Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'My Clients',
          ),
        ],
      ),
    );
  }
}
