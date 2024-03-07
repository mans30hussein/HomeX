import 'package:flutter/material.dart';

class AddTextHaveAcountOrNot extends StatelessWidget {
  const AddTextHaveAcountOrNot({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: () {
              // Navigator.pushNamed(
              //     context, Routs.routForgetPasswordScreen);
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have acount ? ",
                  // style:
                  //TextStyle(fontWeight: FontWieghtHelper.mediam),
                ),
                Text(
                  "Register?",
                  // style:
                  //TextStyle(fontWeight: FontWieghtHelper.mediam),
                ),
              ],
            )));
  }
}
