import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});
  var arrContents = [
    {
      'name': 'John Doe',
      'image':
          'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg',
      'message': 'Hello! How are you?',
      'time': '10:30 AM',
      'unreadCount': 2,
      'isOnline': true,
    },
    {
      'name': 'Ram Kumar',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
      'message': 'Hi! What\'s up?',
      'time': '11:00 AM',
      'unreadCount': 1,
      'isOnline': false,
    },
    {
      'name': 'Shyam Kumar',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
      'message': 'Good morning!',
      'time': '11:30 AM',
      'unreadCount': 0,
      'isOnline': true,
    },
    {
      'name': 'Sita Devi',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
      'message': 'How are you?',
      'time': '12:00 PM',
      'unreadCount': 3,
      'isOnline': false,
    },
    {
      'name': 'Gita Devi',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
      'message': 'Let\'s meet tomorrow.',
      'time': '12:30 PM',
      'unreadCount': 0,
      'isOnline': true,
    },
    {
      'name': 'Radha Devi',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
      'message': 'See you later!',
      'time': '1:00 PM',
      'unreadCount': 1,
      'isOnline': false,
    },
    {
      'name': 'Krishna Kumar',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
      'message': 'What\'s your plan for today?',
      'time': '1:30 PM',
      'unreadCount': 2,
      'isOnline': true,
    },
    {
      'name': 'Mohan Kumar',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
      'message': 'Let\'s go for a walk.',
      'time': '2:00 PM',
      'unreadCount': 0,
      'isOnline': false,
    },
    {
      'name': 'Sohan Kumar',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
      'message': 'Are you coming to the party?',
      'time': '2:30 PM',
      'unreadCount': 1,
      'isOnline': true,
    },
    {
      'name': 'Ravi Kumar',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
      'message': 'I\'m busy right now.',
      'time': '3:00 PM',
      'unreadCount': 0,
      'isOnline': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                arrContents[index]['image'].toString(),
              ),
            ),
            title: Text(
              arrContents[index]['name'].toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text(
              arrContents[index]['message'].toString(),
              style: const TextStyle(fontSize: 14),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  arrContents[index]['time'].toString(),
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 5),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: const Color(0XFF00A884),
                  child: UiHelper.CustomText(
                    text: arrContents[index]['unreadCount'].toString(),
                    height: 11,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: arrContents.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle floating action button press
        },
        backgroundColor: const Color(0XFF00A884),
        child: const Icon(Icons.chat),
      ),
    );
  }
}
