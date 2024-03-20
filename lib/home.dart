import 'package:project_admin/DataKaryawan.dart';
import 'package:flutter/material.dart';
import 'package:project_admin/profile.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => homeState();
}

class homeState extends State<home> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        width: width,
        height: height,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(),
              height: height * 0.25,
              width: width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        profile())); // Tambahkan aksi yang ingin dilakukan ketika foto profil ditekan
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.person,
                              color: Colors.blue,
                              size: 35,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      right: 60,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dashboard",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          "Welcome Back Megumi",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: GridView.count(
                padding: const EdgeInsets.all(30),
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DataKaryawan()));
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const <Widget>[
                              Icon(
                                Icons.people_alt,
                                size: 50,
                                color: Colors.black,
                              ),
                              Text("Data Karyawan",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue,
                      child: Center(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const <Widget>[
                              Icon(
                                Icons.file_copy_rounded,
                                size: 50,
                                color: Colors.black,
                              ),
                              Text("Pengajuan Cuti",
                                  style: TextStyle(fontSize: 17.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue,
                      child: Center(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const <Widget>[
                              Icon(
                                Icons.party_mode,
                                size: 70,
                                color: Colors.cyanAccent,
                              ),
                              Text("Selebriti",
                                  style: TextStyle(fontSize: 17.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue,
                      child: Center(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const <Widget>[
                              Icon(
                                Icons.party_mode,
                                size: 70,
                                color: Colors.cyanAccent,
                              ),
                              Text("Selebriti",
                                  style: TextStyle(fontSize: 17.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
