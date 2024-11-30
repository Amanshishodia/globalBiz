import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globalbiz/controller/appBarController.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function(String)? onMenuItemSelected;

  CustomAppBar({ this.onMenuItemSelected});

  @override
  Widget build(BuildContext context) {
    Appbarcontroller controller = Get.put(Appbarcontroller());
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'asset/Logo.png',
            height: 40,
          ),
          PopupMenuButton<String>(
            icon: Icon(Icons.menu, color: Colors.black),
            onSelected: onMenuItemSelected, // Use the passed callback function
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'Home',
                  child: Text('Home'),
                ),
                PopupMenuItem(
                  value: 'About Us',
                  child: Text('About Us'),
                ),
                PopupMenuItem(
                  value: 'Contact Us',
                  child: Text('Contact Us'),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
