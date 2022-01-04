// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 10),
              const Text(
                'حَوَّاء ',
                style: TextStyle(
                  fontFamily: 'Barada Reqa',
                  fontSize: 151,
                  color: Color(0xffffffff),
                  shadows: [
                    Shadow(
                      color: Color(0x29000000),
                      offset: Offset(5, 5),
                      blurRadius: 6,
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
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
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 5, bottom: 5),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: "E-mail",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
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
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 5, bottom: 5),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: "Password",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          bottomSheet(context);
                        },
                        child: const Text('   Forget password..'),
                        style: TextButton.styleFrom(
                          primary: const Color.fromRGBO(239, 92, 147, 1.0),
                          textStyle: const TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text(
                        '          log in          ',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 31,
                          color: Color(0xffffffff),
                          letterSpacing: 3.1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(206, 86, 139, 1.0),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text(
                        'continue with gmail',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 31,
                          color: Color.fromRGBO(112, 73, 90, 0.9),
                          letterSpacing: 3.1,
                        ),
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Create account..'),
                        style: TextButton.styleFrom(
                          primary: const Color.fromRGBO(239, 92, 147, 1.0),
                          textStyle: const TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void bottomSheet(
    BuildContext context,
  ) {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return Center(
            child: Container(
margin: const EdgeInsets.all(10)  ,
                width: double.infinity,
                height: 250,   clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration:  BoxDecoration( borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(249, 157, 185, 1.0),
                        Color.fromRGBO(253, 220, 230, 1.0)
                      ]),
                ),
                child: Scaffold(
                    body: Container(
                      padding: const EdgeInsets.all(15),
                      decoration:  BoxDecoration( borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(249, 157, 185, 1.0),
                              Color.fromRGBO(253, 220, 230, 1.0)
                            ]),
                      ),


                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: const Color.fromRGBO(253, 220, 230, 1.0),
                            borderRadius: BorderRadius.circular(70.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: "ادخال البريد الالكترونى",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 150),

                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              child: const Text(
                                'تسجيل ',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 31,
                                  color: Color(0xffffffff),
                                  letterSpacing: 3.1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(206, 86, 139, 1.0),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(70.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))),
          );
        });
  }
}
