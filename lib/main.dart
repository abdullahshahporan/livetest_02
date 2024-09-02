import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Responsive UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false, // Removed debug banner
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HUMMING BIRD .'),
        actions: [
          if (MediaQuery.of(context).size.width > 768)
            Row(
              children: [
                TextButton(onPressed: () {}, child: Text("Episodes")),
                TextButton(onPressed: () {}, child: Text("About")),
              ],
            )
        ],
      ),
      drawer: MediaQuery.of(context).size.width <= 768
          ? Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green.shade700,
              ),
              child: Center(
                child: Text(
                  'SKILL UP NOW\nTAP HERE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.local_movies),
              title: Text('Episodes'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {},
            ),
          ],
        ),
      )
          : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1024) {
            return DesktopLayout();
          } else if (constraints.maxWidth >= 768) {
            return TabletLayout();
          } else {
            return MobileLayout();
          }
        },
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'FLUTTER WEB.\nTHE BASICS',
                    style: TextStyle(
                      fontSize: 56,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'In this course we will go over the basics of using'
                        '\n Flutter Web for development. '
                        'Topics will include '
                        '\nResponsive Layout, Deploying, Font Changes, Hover '
                        '\nfunctionality, Modals and more.',
                    style: TextStyle(fontSize: 24, height: 1.5),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10), // Reduced width to bring the button closer
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Corrected parameter for button color
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
              ),
              child: Text(
                'Join course',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center the text
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Center align the text
            ),
            SizedBox(height: 24),
            Text(
              'In this course we will go over the basics of using\n Flutter Web for development. '
                  'Topics will include\n Responsive Layout, Deploying, Font Changes, Hover\n functionality, Modals and more.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, height: 1.5),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Corrected parameter for button color
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 20,
                ),
              ),
              child: Text(
                'Join course',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'In this course we will go over the basics of using Flutter Web for development. '
                  'Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, Modals and more.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Corrected parameter for button color
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
              ),
              child: Text(
                'Join course',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






