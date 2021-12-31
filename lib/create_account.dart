import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding: const EdgeInsets.all(15),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                HexColor("#F99DB9"),
                HexColor("#FFFfff"),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'انشاء حساب',
                style: TextStyle(fontSize: 22, color: HexColor("#70495A")),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: entryField(
                        text: 'الاسم',
                        hint: "الاسم",
                        onSave: () {},
                        validator: () {}),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    flex: 4,
                    child: entryField(
                        text: '  الاسم العائلة',
                        hint: " الاسم العائلة",
                        onSave: () {},
                        validator: () {}),
                  )
                ],
              ),
              entryField(
                  text: 'السن', hint: "السن", onSave: () {}, validator: () {}),
              entryField(
                  text: 'رقم الموبيل',
                  hint: "رقم الموبيل",
                  onSave: () {},
                  validator: () {}),
              entryField(
                  text: 'البريد الالكتروني',
                  hint: "البريد الالكتروني",
                  onSave: () {},
                  validator: () {}),
              entryField(
                  text: 'الرقم السري',
                  hint: "الرقم السري",
                  onSave: () {},
                  validator: () {}),
              submitButton(),

            ],
          ),
        ),
      ),
    );
  }

  Widget entryField({
    required String text,
    required String hint,
    required Function onSave,
    required Function validator,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: HexColor("#FDDCE6"),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: HexColor("#ff707070"), width: 2)),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        onSaved: (s) {
          onSave(s);
        },
        validator: (s) {
          validator(s);
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: HexColor("#70495A"),
          ),
          fillColor: Colors.white,
        ),
      ),
    );
  }

  Widget submitButton() {
    return TextButton(
      onPressed: () {},
      child: Center(
        child: Container(
          width: 100,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: HexColor('#CE568B'),
            borderRadius: const BorderRadius.all(Radius.circular(25)),
          ),
          child: const Text(
            'انشاء',
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
