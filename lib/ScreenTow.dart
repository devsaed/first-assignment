import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 290,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff047AF2), Color(0xff7850FF)],
                      begin: Alignment.topRight),
                  image: DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.dstATop),
                      image: AssetImage('assets/images/man.webp'),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  createItem('posts', '23'),
                  createItem('Followers', '980'),
                  createItem('Following', '60'),
                ],
              ),
            ),
            TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Posts',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Liked',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            createBottomNavigationBarItem('assets/images/home.png', ''),
            createBottomNavigationBarItem('assets/images/searsh.png', ''),
            createBottomNavigationBarItem('assets/images/add.png', ''),
            createBottomNavigationBarItem('assets/images/Notification.png', ''),
            createBottomNavigationBarItem('assets/images/Profile.png', ''),
          ],
        ),
      ),
    );
  }
}

createItem(String item, String value) {
  return Column(
    children: [
      Text(
        value,
        style: TextStyle(color: Color(0xFF047AF2)),
      ),
      SizedBox(
        height: 10,
      ),
      Text(item)
    ],
  );
}

createBottomNavigationBarItem(String pathImage, String label) {
  return BottomNavigationBarItem(
      icon: Image.asset(
        pathImage,
        width: 25,
        height: 25,
      ),
      label: label);
}
