import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Camera/camera_home.dart';
import 'package:url_launcher/url_launcher.dart';

/*_launchURLBrowser() async {
  var url = Uri.parse("https://upesite-or-not.firebaseapp.com/__/auth/handler");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}*/

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(),
      height: size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("assets/Icons/upesopen.png"),
            width: size.width * 0.75,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Text(
            "UPESite or Not",
            style: TextStyle(
              color: Colors.black,
              fontSize: size.width * 0.12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.7,
            indent: size.width * 0.2,
            endIndent: size.width * 0.2,
          ),
          Text(
            "Login",
            style: TextStyle(
              color: Colors.black,
              fontSize: size.width * 0.07,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.06, right: size.width * 0.06),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Lexend"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 160, 204, 58)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 160, 204, 58)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.06, right: size.width * 0.06),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 160, 204, 58)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 160, 204, 58)),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
