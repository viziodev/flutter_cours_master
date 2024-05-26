import 'package:flutter/material.dart';
import 'package:flutter_corse/pages/home/home.page.dart';
import 'package:flutter_corse/public/constants/colors.constant.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
    // Important: Remove any padding from the ListView.
           padding: EdgeInsets.zero,
      children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: scaffoldbg,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
                   Navigator.pop(context);
                  Navigator.pushNamed(context, HomePage.routeName);
            },
          
        ),
       ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Absences'),
            onTap: () {
                  
                 
            },

          
      ),
    ],
  ),
       );
  }
}