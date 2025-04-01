import 'package:flutter/material.dart';
import 'package:whatsapp/Screen/Home/Calls/calls_screen.dart';
import 'package:whatsapp/Screen/Home/Camera/camera_screen.dart';
import 'package:whatsapp/Screen/Home/Chats/chats_screen.dart';
import 'package:whatsapp/Screen/Home/Status/status_screen.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: null,
          toolbarHeight: 80,
          title: UiHelper.CustomText(
            text: 'WhatsApp',
            height: 20,
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(Icons.search, color: Colors.white),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,

            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
