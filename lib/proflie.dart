// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework5/darwer.dart';
import 'package:homework5/login.dart';
import 'package:homework5/my_home_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ProfileCard(),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage("images/070.png"),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nakarin Phaisila',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'MILLUKI',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 16.0),
            Divider(),
            ListTile(
              title: Text('Email'),
              subtitle: Text('stu6412732107@sskru.ac.th'),
              leading: Icon(Icons.email),
            ),
            ListTile(
              title: Text('Phone'),
              subtitle: Text('+66 0022115544'),
              leading: Icon(Icons.phone),
            ),
            ListTile(
              title: Text('Location'),
              subtitle: Text('Sisaket,Thailand'),
              leading: Icon(Icons.location_on),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Get.to(() => LoginPage());
              },
              child: Text('Back to Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => MyHomePage());
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
