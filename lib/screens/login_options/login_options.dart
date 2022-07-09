import 'package:flutter/material.dart';
import 'package:steadycalendar/components/sc_flat_button.dart';
import 'package:steadycalendar/components/sc_image_button.dart';
import 'package:steadycalendar/config/styles.dart';

import '../cal_pager/cal_pager.dart';

class LoginOptions extends StatelessWidget {

  static const routeName = '/intro/login_options';


  const LoginOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/pink-plants@3x.png'),
            fit: BoxFit.cover,)
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 255, 255, 0.25)
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SCFlatButton(
              const SCImageButton('assets/images/google-logo-9808.png',
                'Continue with Google'),
              textColor: Styles.primaryTextColor,
              backgroundColor: Colors.white,
              onTap: () => _signupTapped(context),
            ),
          ),
        )
      ]),
    );
  }

  Future _signupTapped(BuildContext context) async {
    //Todo proper login code, this is simulating Login
    Navigator.of(context).pushNamed(CalPager.routeName);
  }

}