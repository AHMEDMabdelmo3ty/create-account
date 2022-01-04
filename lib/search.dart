import 'package:create_account/profile.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(249, 157, 185, 1.0),
                  Color.fromRGBO(253, 220, 230, 1.0)
                ]),
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/arrows.png',
                        fit: BoxFit.contain,
                        width: 110,
                        height: 110,
                      ),
                      iconSize: 60,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Profile();
                        }));
                      },
                      icon:   CircleAvatar(
                        backgroundColor: Colors.red,
                        minRadius: 50,
                        child: Image.asset(
                          'assets/icons/Group 31.png',
                          fit: BoxFit.contain,
                          width: 110,
                        ),
                      ),
                      iconSize: 60,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/laboratory.png',
                        fit: BoxFit.contain,
                        width: 110,
                        height: 110,
                      ),
                      iconSize: 70,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/doctor.png',
                        fit: BoxFit.contain,
                        width: 110,
                      ),
                      iconSize: 70,
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: const Color.fromRGBO(253, 220, 230, 1.0),
                    borderRadius: BorderRadius.circular(70.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Image.asset(
                          'assets/icons/magnifier.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
