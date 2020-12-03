import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_sharp,
                      size: 18,
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Save',
                      style: TextStyle(fontSize: 16, color: Color(0xFF047AF2)),
                    )
                  ],
                ),
                Container(
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 40, bottom: 20),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstATop),
                        image: AssetImage('assets/images/man.webp'),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider(height: 0.5, color: Color(0xFFCCCCCC)),
                    createItem('Name', 'Said S. Alnahhal'),
                    Divider(height: 0.5, color: Color(0xFFCCCCCC)),
                    createItem('Address', 'Khalifa Park, Abu Dhabi, UAE'),
                    Divider(height: 0.5, color: Color(0xFFCCCCCC)),
                    createItem('Email', 'Linda@host.com'),
                    Divider(height: 0.5, color: Color(0xFFCCCCCC)),
                    createItem('Mobile', '009715932145654'),
                    Divider(height: 0.5, color: Color(0xFFCCCCCC)),
                    Row(
                      children: [
                        Container(
                          child: createItem('Birthdate', '15-JAN-1990'),
                        ),
                        Spacer(),
                        Icon(
                          Icons.date_range,
                          color: Color(0xFF047AF2),
                          size: 15,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

createItem(String item, String value) {
  return Container(
    margin: EdgeInsets.only(top: 15, bottom: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          item,
          style: TextStyle(fontSize: 14),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 17,
            color: Color(0xFF047AF2),
          ),
        ),
      ],
    ),
  );
}
