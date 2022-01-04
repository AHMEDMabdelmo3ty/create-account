import 'package:flutter/material.dart';

import 'BottomNavigationBarWidget.dart';
import 'home_view.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _bottomNavigationBarColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _bottomNavigationBar(),
      body: Stack(
        children: [
          //
          background(),
          profileCircle(),
          Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    'اسم المستخدم',
                    style: TextStyle(
                      fontFamily: 'Barada Reqa',
                      fontSize: 30,
                      color: Color(0xffffffff),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  CircleAvatar(
                    backgroundColor: const Color.fromRGBO(206, 86, 139, 1),
                    minRadius: 50,
                    child: Image.asset(
                      'assets/icons/Group 31.png',
                      fit: BoxFit.contain,
                      width: 110,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    margin: const EdgeInsets.all(5),
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
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        ' user name ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    margin: const EdgeInsets.all(5),
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
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        ' user name ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    margin: const EdgeInsets.all(5),
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
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        ' user name ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    margin: const EdgeInsets.all(5),
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
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        ' user name ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    margin: const EdgeInsets.all(5),
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
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        ' user name ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Center(
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color:  Color.fromRGBO(206, 86, 139, 1),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: const Text(
                          'تعديل',
                          style: TextStyle(
                              fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget background() {
    return Container(
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
    );
  }

  Widget profileCircle() {
    return Positioned(
      child: Container(
        width: 545,
        height: 507,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(206, 86, 139, 1), shape: BoxShape.circle),
      ),
      top: -255,
      right: -80,
    );
  }

  _bottomNavigationBar() {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: BottomAppBar(
          notchMargin: 5,
          clipBehavior: Clip.antiAlias,
          elevation: 5,
          color: const Color.fromRGBO(249, 237, 241, 1),
          shape: const AutomaticNotchedShape(
            RoundedRectangleBorder(),
            StadiumBorder(
              side: BorderSide(),
            ),
          ),
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                    icon: Image.asset(
                      'assets/icons/searching.png',
                      fit: BoxFit.contain,
                      width: 25,
                    ),
                    color: _bottomNavigationBarColor,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return BottomNavigationBarWidget(0);
                      }));
                    }),
                IconButton(
                    icon: Image.asset(
                      'assets/icons/calendar.png',
                      fit: BoxFit.contain,
                      width: 25,
                    ),
                    color: _bottomNavigationBarColor,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return BottomNavigationBarWidget(1);
                      }));
                    }),
                const SizedBox(
                  width: 25,
                ),
                IconButton(
                    icon: Image.asset(
                      'assets/icons/checklist.png',
                      fit: BoxFit.contain,
                      width: 25,
                    ),
                    color: _bottomNavigationBarColor,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return BottomNavigationBarWidget(2);
                      }));
                    }),
                IconButton(
                    icon: Image.asset(
                      'assets/icons/breast.png',
                      fit: BoxFit.contain,
                      width: 25,
                    ),
                    color: _bottomNavigationBarColor,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return BottomNavigationBarWidget(3);
                      }));
                    })
              ])),
    );
  }

  _FloatingButton() {
    return FloatingActionButton(
      elevation: 50,
      backgroundColor: const Color.fromRGBO(253, 220, 230, 1),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return HomeView();
        }));
      },
      tooltip: '',
      child: Image.asset(
        'assets/icons/home_icon_png.png',
        fit: BoxFit.contain,
        width: 30,
      ),
    );
  }
}
