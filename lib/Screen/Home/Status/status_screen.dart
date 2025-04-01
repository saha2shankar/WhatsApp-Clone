import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: UiHelper.CustomText(
              text: 'Status',
              height: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0XFF00A884),
                  backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0XFF00A884),
                    child: Icon(Icons.add, color: Colors.white, size: 15),
                  ),
                ),
              ],
            ),
            title: UiHelper.CustomText(
              text: 'My Status',
              height: 16,
              fontWeight: FontWeight.bold,
            ),
            subtitle: UiHelper.CustomText(
              text: 'Tap to add status update',
              height: 14,
              color: Colors.grey,
            ),
          ),
          const Divider(thickness: 0.1, color: Colors.grey),

          Row(
            children: [
              const SizedBox(width: 20),
              UiHelper.CustomText(
                text: 'Recent updates',
                height: 16,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(width: 200),
              Icon(Icons.arrow_drop_down, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
              ),
            ),
            title: UiHelper.CustomText(
              text: 'John Doe',
              height: 16,
              fontWeight: FontWeight.bold,
            ),
            subtitle: UiHelper.CustomText(
              text: 'Today, 10:30 AM',
              height: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
