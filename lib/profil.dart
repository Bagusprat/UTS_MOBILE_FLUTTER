// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class profil_page extends StatelessWidget {
  const profil_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PROFIL PAGE",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800)),
               backgroundColor: Colors.red
               
      ),
      body: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int friend = 5;

  List<String> images = [
    'https://www.ligaolahraga.com/storage/images/news/2023/10/21/raheem-sterling-bertekad-rebut-kembali-tempat-di-timnas-inggris.jpg',
    'https://sportnewsafrica.com/wp-content/uploads/2023/07/Nicolas-Jackson-CHelsea-vs-Brighton-.jpg',
    'https://www.footballdatabase.eu/images/photos/players/a_465/465730.jpg',
    'https://img.okezone.com/content/2023/08/17/45/2866386/kisah-sedih-moises-caicedo-pemain-termewah-liga-inggris-yang-dulunya-tidak-punya-sepatu-bola-EHcqiCBeKp.jpg',
    'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltaafb4bc48ad51394/64bd40effd67cf5ec6091cdb/GettyImages-1563861687.jpg?auto=webp&format=pjpg&width=3840&quality=60',
  ];

  List<String> names = [
   'Tehyung',
    'Jimin',
    'Jungkuk',
    'Renjun',
    'Kairi',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.zero, children: <Widget>[
      SizedBox(height: 50),
      profileImage(70,
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp0ZqC-9cstrbroXu9HewX2AJK8qfT2H812w&usqp=CAU'),
      SizedBox(height: 20),
      description(),
      SizedBox(height: 80),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 27.0, bottom: 3),
              child: Text(
                "My Brok! ($friend)",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: friend,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          profileImage(40, images[index]),
                          SizedBox(height: 8),
                          Text(
                            names[index],
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      )
    ]));
  }

  Widget profileImage(double sizeRadius, String linkImage) => CircleAvatar(
        radius: sizeRadius,
        backgroundColor: const Color.fromARGB(255, 224, 47, 47),
        child: ClipOval(
          child: Image.network(
            linkImage,
            fit: BoxFit.cover,
            width: sizeRadius * 2,
            height: sizeRadius * 2,
          ),
        ),
      );

  Widget description() => Column(
        children: [
          const SizedBox(height: 8),
          Text(
            'Bagus Pratama',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '152021142',
            style: TextStyle(fontSize: 20),
          )
        ],
      );
}
