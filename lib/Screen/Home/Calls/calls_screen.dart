import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  CallsScreen({super.key});
  var arrContent = [
    {'name': 'John Doe', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Harishankar Kumar', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Ram Kumar', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Shyam Kumar', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Sita Devi', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Gita Devi', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Radha Devi', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Krishna Kumar', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Mohan Kumar', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Sohan Kumar', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Ravi Kumar', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Ajay Kumar', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Vijay Kumar', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Anil Kumar', 'lastCall': 'Today, 10:00 AM'},
    {'name': 'Sunil Kumar', 'lastCall': 'Today, 10:00 AM'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
              ),
            ),
            title: Text(
              arrContent[index]['name'].toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(arrContent[index]['lastCall'].toString()),
            trailing: const Icon(Icons.call, color: Colors.green),
          );
        },
        itemCount: arrContent.length,
      ),
    );
  }
}
