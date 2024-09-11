import 'package:dummy_api_call_retrofit/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/assets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ValueNotifier<bool> _isSelected=ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16),
          // Circular chart with profile picture
          Stack(
            alignment: Alignment.center,
            children: [
              // Circular chart (can use a library for a proper circular chart)
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200], // Placeholder for the chart background
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(
                    value: 0.7, // Example value, replace with dynamic value
                    strokeWidth: 16,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                    backgroundColor: Colors.orange,
                  ),
                ),
              ),
              // Profile picture
              const CircleAvatar(
                backgroundImage: AssetImage(Assets.imagesDummyProfileImage), // Replace with actual image
                radius: 50,
              ),
            ],
          ),
          SizedBox(height: 16),
          // Client name and details
          Text(
            'Amy Brown',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '120 Kcal',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16),
          // Log buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.2,
              ),
              children: [
                _buildLogButton(
                  label: 'FOOD LOG',
                  iconPath: Assets.imagesFoodImage, // Replace with actual icon path
                ),
                _buildLogButton(
                  label: 'ACTIVITY LOG',
                  iconPath: Assets.imagesGymImage, // Replace with actual icon path
                ),
                _buildLogButton(
                  label: 'WEIGHT CHART',
                  iconPath: Assets.imagesChartPage, // Replace with actual icon path
                ),
                _buildLogButton(
                  label: 'CALL LOG',
                  iconPath: Assets.imagesPhoneImage, // Replace with actual icon path
                ),
              ],
            ),
          ),
          24.verticalSpace,
          Container(
            width: 1.sw,
            color: Colors.blue,
            child: const Text(
              'Client Access',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          // Client Access
          Container(
            width: double.infinity,
            color: Colors.grey[300],
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                16.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Account active?',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            'Warning: turning this off will log out this client and prevent them from using the app.',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,

                            ),
                          )
                        ],
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: _isSelected,
                      builder: (context, value, child) {
                        return Switch(
                          value: value, // Assume the account is active
                          onChanged: (value1) {
                            _isSelected.value=value1;
                            // Handle switch toggle logic
                          },
                        );
                      },
                    ),
                  ],
                ),
                8.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build log buttons
  Widget _buildLogButton({required String label, required String iconPath}) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColor.color0A0912)
            ),
            child: Center(
              child: Image.asset(
                iconPath,
                width: 60, // Adjust the icon size as per your requirement
                height: 60,
              ),
            ),
          ),
        ),
        8.verticalSpace,
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
