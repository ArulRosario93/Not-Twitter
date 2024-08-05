import "package:flutter/material.dart";
import "package:twitter/Authentication/auth_methods.dart";
import "package:twitter/Pages/EnterPassword/enter_password.dart";
import "package:twitter/Pages/Login/login.dart";
import "package:twitter/utils/input_box.dart";
import "package:google_fonts/google_fonts.dart";

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();
    TextEditingController FullName = TextEditingController();
    TextEditingController Mobile = TextEditingController();

    handleSubmit() async {
      var res = await AuthMethods().signUpWithEmailAndPassword(
          email.text, password.text, FullName.text, Mobile.text);

      if (res == "Success") {
      } else {}
    }

    handleClickToEnterPassword() {
      //validation of cerdentials

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => EnterPassword(
                  handleSubmit: handleSubmit,
                  password: password,
                  confirmPassword: confirmPassword)));
    }

    handleClickToLogin() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Login()));
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Flexible(
                    flex: 4,
                    child: Container(
                      color: Colors.red,
                    )),
                Flexible(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sign up",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 34,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            )),
                          ),
                          const InputBox(hintText: "Mail", icon: Icons.mail),
                          const InputBox(
                              hintText: "Full Name", icon: Icons.person),
                          const InputBox(hintText: "Mobile", icon: Icons.phone),
                          FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Row(
                              children: [
                                Text(
                                  "By signing up you agree to our ",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  )),
                                ),
                                Text(
                                  "Terms of Service ",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                                Text(
                                  "and ",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  )),
                                ),
                                Text(
                                  "Privacy Policy",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: handleClickToEnterPassword,
                              child: Text(
                                "Continue",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Joined Us Before?",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                )),
                              ),
                              TextButton(
                                onPressed: handleClickToLogin,
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
