import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final githubUrl = 'https://github.com/Ahmadsaniliman/hngstagezero';
    final mobileDevsUrl = 'http://hng.tech/hire/mobile-ui-ux-developers';
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hng Task",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () async {
                await launchUrl(
                  Uri.parse(githubUrl),
                );
              },
              child: const Text(
                'Github',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                await launchUrl(
                  Uri.parse(mobileDevsUrl),
                );
              },
              child: const Text(
                'Mobile Devs',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
