import 'package:flutter/material.dart';
import 'package:upesite/Camera/camera_home.dart';
import 'package:upesite/services/authServices.dart';
import 'package:upesite/shared/sharedPreferences.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  AuthService authService = AuthService();
  String password = "";
  String email = "";
  String fullName = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                "Register",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.07,
                  fontFamily: "Lexend",
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
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Full Name",
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
                  onChanged: (value) {
                    setState(() {
                      fullName = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.06, right: size.width * 0.06),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
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
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
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
                      fontFamily: "Lexend",
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
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              ElevatedButton(
                onPressed: () {
                  register();
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width * 0.05,
                    fontFamily: "Lexend",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 160, 204, 58),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.7,
                      indent: size.width * 0.1,
                      endIndent: size.width * 0.02,
                    ),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width * 0.05,
                      fontFamily: "Lexend",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.7,
                      indent: size.width * 0.02,
                      endIndent: size.width * 0.1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.1, right: size.width * 0.1),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: size.height * 0.01, bottom: size.height * 0.01),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage("assets/Icons/microsoft.png"),
                          width: size.width * 0.1,
                        ),
                        Text("Sign in with Microsoft",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.05,
                              fontFamily: "Lexend",
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  register() async {
    await authService
        .registerUserWithEmailandPassword(fullName, email, password)
        .then((value) async {
      if (value == true) {
        await HelperFunctions.savedUserLoggedInStatus(true);
        await HelperFunctions.savedUserNameSF(fullName);
        await HelperFunctions.savedUserEmailSF(email);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => CameraHome()));
      } else {
        setState(() {
          // showSnackBar(context, Colors.red, value);
          // _isLoading = false;
        });
      }
    });
  }
}
