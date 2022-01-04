
// ignore_for_file: file_names

import 'home_view.dart';
import 'search.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
late  int nam;

BottomNavigationBarWidget(this.nam, {Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final _bottomNavigationBarColor = Colors.white;
  late List<Widget> _dynamicPageList;
  int _index = 0;


  @override
  void initState() {
    //اضافة الصفحات اللى هيتم انشائها فيما بعد
    _dynamicPageList = [
      Search(),
      Search(),
      Search(),
      Search(),


    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

   setState(() {
     _index=widget.nam;
   });
    return Scaffold(
        body: _dynamicPageList[_index],
        floatingActionButton: FloatingActionButton(
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
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30
          )),
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
                          setState(() {
                            widget.nam=0;
                            _index = 0;
                          });
                        }),
                    IconButton(
                        icon: Image.asset(
                          'assets/icons/calendar.png',
                          fit: BoxFit.contain,
                          width: 25,
                        ),
                        color: _bottomNavigationBarColor,
                        onPressed: () {
                          setState(() {
                            widget.nam=1;
                            _index = 1;
                          });
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
                          setState(() {
                            widget.nam=3;
                            _index = 2;
                          });
                        }),
                    IconButton(
                        icon: Image.asset(
                          'assets/icons/breast.png',
                          fit: BoxFit.contain,
                          width: 25,
                        ),
                        color: _bottomNavigationBarColor,
                        onPressed: () {
                          setState(() {
                            widget.nam=3;
                            _index = 3;
                          });
                        })
                  ])),
        ));
  }
}
